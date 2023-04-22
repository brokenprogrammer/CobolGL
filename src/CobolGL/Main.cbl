       identification division.
       program-id "CobolGL".

       environment division.
       special-names.
           call-convention 74 is winapi.
       working-storage section.

       copy "windows.cpy".
       copy "windows-constants.cpy".

       01 wnd-class-ex.
         05 style UINT.
         05 lpfn-wnd-proc  procedure-pointer.
         05 cb-cls-extra   int value 0.
         05 cb-wnd-extra   int value 0.
         05 h-instance     HINSTANCE.
         05 h-icon         HANDLE value null.
         05 h-cursor       HANDLE value null.
         05 h-brush        HANDLE value null.
         05 menu-name      LPCSTR.
         05 class-name     LPCSTR.

       01 msg.
         05 msg-hwnd HANDLE.
         05 msg-msg uint.
         05 wparam uns-int.
         05 lparam uns-int.
         05 t int.
         05 point.
           10 p-x long.
           10 p-y long.
         05 priv int.

       01 gl-pixel-descriptor.
         05 gl-pd-size int.
         05 gl-pd-ver int.
         05 gl-pd-flags int.
         05 gl-pd-pxl-t uns-char.
         05 cColorBits uns-char.
         05 cRedBits uns-char.
         05 cRedShift uns-char.
         05 cGreenBits uns-char.
         05 cGreenShift uns-char.
         05 cBlueBits uns-char.
         05 cBlueShift uns-char.
         05 cAlphaBits uns-char.
         05 cAlphaShift uns-char.
         05 cAccumBits uns-char.
         05 cAccumRedBits uns-char.
         05 cAccumGreenBits uns-char.
         05 cAccumBlueBits uns-char.
         05 cAccumAlphaBits uns-char.
         05 cDepthBits uns-char.
         05 cStencilBits uns-char.
         05 cAuxBuffers uns-char.
         05 iLayerType uns-char.
         05 bReserved uns-char.
         05 dwlayermask int.
         05 dwvisiblemask int.
         05 dwdamagemask int.

       01 gl-attributes.
           03 gl-attribute int occurs 15.
       01 gl-format int.
       01 gl-formats uint.

       local-storage section.
       01 ws-overlappedwindow usage uns-long.
       01 szClassName pic x(22) value "cobol_gl_window_class" & c-null.
       01 szWindowName pic x(10) value "My-Window" & c-null.
       01 szWindowTitle pic x(8) value "CobolGL" & c-null.

       01 hwnd HANDLE.
       01 hdc HANDLE.

       01 gl-dummy-handle HANDLE.
       01 gl-dummy-hdc HANDLE.
       01 gl-pixel-format int.
       01 gl-ok int.
       01 gl-set-p-format-r int.
       01 gl-rc HANDLE.

       01 gl-get-ext-func                usage procedure-pointer.
       01 gl-choose-pixel-format-func    usage procedure-pointer.
       01 gl-create-context-attribs-func usage procedure-pointer.
       01 gl-swap-interval-func          usage procedure-pointer.

       01 last-error usage WORD.
       01 temp-num int.

       linkage section.
       procedure division.
           perform GetWGLFunctions.

           compute style = cs-vredraw + cs-hredraw.
           set lpfn-wnd-proc to entry "WndProc".
           set menu-name to address of szWindowName.
           set class-name to address of szClassName.

           call winapi "GetModuleHandleA" using by value 0
                              returning h-instance.

           call winapi "RegisterClassA" using by reference wnd-class-ex
               returning mresult.

           if mresult = 0
               perform fatal-error
           end-if

           compute ws-overlappedwindow = ws-overlapped b-or
             ws-caption b-or
             ws-sysmenu b-or
             ws-thickframe b-or
             ws-minimizebox b-or
             ws-maximizebox.

           move ws-overlappedwindow to temp-num
           call winapi "CreateWindowExA" using by value 0
                                               by reference szClassName
                                               by reference 
                                               szWindowTitle
                                               by value temp-num
                                               by value cw-usedefault
                                               by value cw-usedefault
                                               by value cw-usedefault
                                               by value cw-usedefault
                                               by value 0
                                               by value 0
                                               by value h-instance
                                               by value 0
                                     returning hwnd.
           call winapi "GetLastError"
             returning last-error.

           call winapi "ShowWindow" using by value hwnd
                                          by value 5.
           call winapi "UpdateWindow" using by value hwnd.

           call winapi "GetLastError"
             returning last-error.

           call winapi "GetDC" using by value hwnd
                           returning hdc.
       
           move h"2001" to gl-attribute(1).
           move 1 to gl-attribute(2).
           move h"2010" to gl-attribute(3).
           move 1 to gl-attribute(4).
           move h"2011" to gl-attribute(5).
           move 1 to gl-attribute(6).
           move h"2013" to gl-attribute(7).
           move h"202B" to gl-attribute(8).
           move h"2014" to gl-attribute(9).
           move 24 to gl-attribute(10).
           move h"2022" to gl-attribute(11).
           move 24 to gl-attribute(12).
           move h"2023" to gl-attribute(13).
           move 8 to gl-attribute(14).
           move 0 to gl-attribute(15).

           call winapi gl-choose-pixel-format-func
               using by value hdc
                     by reference gl-attributes
                     by value 0
                     by value 1
                     by reference gl-format
                     by reference gl-formats.

           if gl-formats = 0
               perform fatal-error
               stop run
           end-if

           move function length (gl-pixel-descriptor) to temp-num.
           call winapi "DescribePixelFormat" using by value hdc
                                                   by value gl-format
                                                   by value temp-num
                                                   by reference 
                                                   gl-pixel-descriptor
               returning gl-ok

           if gl-ok = 0
               perform fatal-error
           end-if

           call winapi "SetPixelFormat" using
                       by value hdc
                       by value gl-format
                       by reference gl-pixel-descriptor
                       returning gl-ok

           if gl-ok = 0
               perform fatal-error
           end-if

           move h"2091" to gl-attribute(1).
           move 4 to gl-attribute(2).
           move h"2092" to gl-attribute(3).
           move 5 to gl-attribute(4).
           move h"9126" to gl-attribute(5).
           move h"00000001" to gl-attribute(6).
           move 0 to gl-attribute(7).

           call winapi gl-create-context-attribs-func using
               by value hdc 
               by value 0
               by reference gl-attributes
               returning gl-rc

           call winapi "wglMakeCurrent" using by value hdc
                                              by value gl-rc
                                    returning gl-ok

           if gl-ok = 0
               perform fatal-error
           end-if

           move 1 to temp-num.
           perform until temp-num = 0
               perform message-loop
               call winapi "glClearColor" using by value h"3ec8b439"
                                                by value h"3f158106"
                                                by value h"3f6dd2f2"
                                                by value h"3f800000"
               call winapi "glClear" using by value h"00004000"
               call winapi "SwapBuffers" using by value hdc
           end-perform
           

           call winapi "GetLastError"
             returning last-error.

           perform fatal-error
           goback
           .
       fatal-error.
           call winapi "GetLastError"
             returning last-error.

           call winapi "MessageBoxA" using 
                                   by value 0 size 2
                                   by reference "Hello World" & x"00"
                                   by reference "CobolGL" &x"00"
                                   by value 0 size 2
           call winapi "ExitProcess" using by value 0 size 2
       .
       message-loop section.
       message-loop-start.
           move 0 to mresult
           call winapi "PeekMessageA" using by reference msg
                                               by value 0
                                               by value 0
                                               by value 0
                                               by value 1
                                   returning mresult.
           if mresult = 1
               call winapi "TranslateMessage" using by reference msg
               call winapi "DispatchMessageA" using by reference msg
               go to message-loop-start
           end-if
       exit.

       GetWGLFunctions section.
           call winapi "CreateWindowExA" using by value 0
                                               by reference "STATIC" &
             c-null
                                               by reference
             "DummyWindow" & c-null
                                               by value 0
                                               by value 0
                                               by value 0
                                               by value 0
                                               by value 0
                                               by value 0
                                               by value 0
                                               by value 0
                                               by value 0
                                     returning gl-dummy-handle.
           if gl-dummy-handle = null
               perform fatal-error
           end-if

           call winapi "GetDC" using by value gl-dummy-handle
                           returning gl-dummy-hdc.

           move function length (gl-pixel-descriptor) to gl-pd-size.
           move 1 to gl-pd-ver.
           move 37 to gl-pd-flags.                                      
           move 0 to gl-pd-pxl-t.
           move 24 to cColorBits.

           call winapi "ChoosePixelFormat" using by value gl-dummy-hdc
                                                 by reference
             gl-pixel-descriptor
                                       returning gl-pixel-format.

           call winapi "DescribePixelFormat" using
                           by value gl-dummy-hdc
                           by value gl-pixel-format
                           by value function length(gl-pixel-descriptor)
                           by reference gl-pixel-descriptor
                           returning gl-ok.

           call winapi "SetPixelFormat" using
                           by value gl-dummy-hdc
                           by value gl-pixel-format
                           by reference gl-pixel-descriptor
                           returning gl-set-p-format-r.

           call winapi "wglCreateContext" using by value gl-dummy-hdc
                                      returning gl-rc.

           call winapi "wglMakeCurrent" using by value gl-dummy-hdc
                                              by value gl-rc
                                    returning gl-ok.

           call winapi "wglGetProcAddress" using by reference
             "wglGetExtensionsStringARB" & c-null
                                returning gl-get-ext-func

           if gl-get-ext-func = null
               display 'OpenGL does not support extensions string'
               stop run
           end-if

           call winapi "wglGetProcAddress" using by reference
             "wglChoosePixelFormatARB" & c-null
                                returning gl-choose-pixel-format-func

           if gl-choose-pixel-format-func = null
               display 'OpenGL does not support required extension'
               stop run
           end-if

           call winapi "wglGetProcAddress" using by reference
             "wglCreateContextAttribsARB" & c-null
                                returning gl-create-context-attribs-func

           if gl-create-context-attribs-func = null
               display 'OpenGL does not support required extension'
               stop run
           end-if

           call winapi "wglGetProcAddress" using by reference
             "wglSwapIntervalEXT" & c-null
                                returning gl-swap-interval-func

           if gl-swap-interval-func = null
               display 'OpenGL does not support required extension'
               stop run
           end-if

           call winapi "wglMakeCurrent" using by value 0
                                       by value 0
           call winapi "wglDeleteContext" using by value gl-rc
           call winapi "ReleaseDC" using by value gl-dummy-handle
                                  by value gl-dummy-hdc
           call winapi "DestroyWindow" using by value gl-dummy-handle

           exit.