       identification division.
       program-id. cobolgl.
       
       data division.
       working-storage section.
       copy windows.
       copy windows-constants.

       01 temp-ptr usage pointer.
       01 temp-ptr-x usage program-pointer.
       01 temp-value usage int.

       01 wnd-class-ex.
         02 style          usage binary-int unsigned.
         02 wnd-class-pad  usage binary-int unsigned.
         02 lpfn-wnd-proc  usage pointer.
         02 cb-cls-extra   usage binary-int.
         02 cb-wnd-extra   usage binary-int.
         02 h-instance     usage pointer.
         02 h-icon         usage pointer.
         02 h-cursor       usage pointer.
         02 h-brush        usage pointer.
         02 menu-name      usage pointer.
         02 class-name     usage pointer.

       local-storage section.
       
       01 szClassName    pic x(22) value z"cobol_gl_window_class".
       01 szWindowName   pic x(10) value z"My-Window".
       01 szWindowTitle  pic x(8)  value z"CobolGL".
       
       01 mresult        pic x(4) comp-5.
       01 last-error     usage uns-short.
       01 hwnd           usage HANDLE.
       01 msg usage uns-int.

       01 gl-dummy-int      usage int.
       01 gl-dummy-handle   usage HANDLE.
       01 gl-dummy-hdc      usage HANDLE.
       01 gl-pixel-format   usage int.
       01 gl-ok             usage int.
       01 gl-set-p-format-r usage int.
       01 gl-rc             usage HANDLE.

       01 gl-get-ext-func   usage pointer.
       01 gl-ext-string     pic x(4096).

       01 gl-choose-pixel-format-func   usage pointer.
       01 gl-create-context-attribs-func   usage pointer.
       01 gl-swap-interval-func          usage pointer.
       

       01 gl-pixel-descriptor.
         05 gl-pd-size usage int.
         05 gl-pd-ver usage int.
         05 gl-pd-flags usage int.
         05 gl-pd-pxl-t usage uns-char.
         05 cColorBits usage uns-char.
         05 cRedBits usage uns-char.
         05 cRedShift usage uns-char.
         05 cGreenBits usage uns-char.
         05 cGreenShift usage uns-char.
         05 cBlueBits usage uns-char.
         05 cBlueShift usage uns-char.
         05 cAlphaBits usage uns-char.
         05 cAlphaShift usage uns-char.
         05 cAccumBits usage uns-char.
         05 cAccumRedBits usage uns-char.
         05 cAccumGreenBits usage uns-char.
         05 cAccumBlueBits usage uns-char.
         05 cAccumAlphaBits usage uns-char.
         05 cDepthBits usage uns-char.
         05 cStencilBits usage uns-char.
         05 cAuxBuffers usage uns-char.
         05 iLayerType usage uns-char.
         05 bReserved usage uns-char.
         05 dwlayermask usage int.
         05 dwvisiblemask usage int.
         05 dwdamagemask usage int.

       procedure division.
           perform init
           perform GetWGLFunctions
           perform SetupWindow
           stop run
           .
       init.
           compute ws-overlappedwindow = ws-overlapped b-or
             ws-caption b-or
             ws-sysmenu b-or
             ws-thickframe b-or
             ws-minimizebox b-or
             ws-maximizebox
           

           compute style = cs-vredraw + cs-hredraw
         
           .
       GetWGLFunctions.
           call 'CreateWindowExA' using by value 0
                                   by reference z"STATIC"
                                   by reference z"DummyWindow"
                                   by value ws-overlappedwindow
                                   by value cw-usedefault
                                   by value cw-usedefault
                                   by value cw-usedefault
                                   by value cw-usedefault
                                   by value 0
                                   by value 0
                                   by value 0
                                   by value 0
                                   returning gl-dummy-handle
           
           call "showPointer" using by reference gl-dummy-handle
           call "showPointer" using by reference NULL
           
           call "GetDC" using by value gl-dummy-handle
                              returning gl-dummy-hdc
           call "showPointer" using by reference gl-dummy-hdc

           move function length (gl-pixel-descriptor) to gl-pd-size
           move 1 to gl-pd-ver
           move 37 to gl-pd-flags                                      
           move 0 to gl-pd-pxl-t
           move 24 to cColorBits

           call "ChoosePixelFormat" using by value gl-dummy-hdc
                                    by reference gl-pixel-descriptor
                                   returning gl-pixel-format
           display gl-pixel-format

           call "DescribePixelFormat" using by value gl-dummy-hdc
                     by value gl-pixel-format
                     by value function length(gl-pixel-descriptor)
                     by reference gl-pixel-descriptor
               returning gl-ok

           call "SetPixelFormat" using by value gl-dummy-hdc
                            by value gl-pixel-format
                            by reference gl-pixel-descriptor
                     returning gl-set-p-format-r

           call "wglCreateContext" using by value gl-dummy-hdc
                                      returning gl-rc

           call "wglMakeCurrent" using by value gl-dummy-hdc
                                              by value gl-rc
                                    returning gl-ok

           call "wglGetProcAddress" using by reference
             z"wglGetExtensionsStringARB"
                                       returning gl-get-ext-func
           
           if gl-get-ext-func = null
             display 'OpenGL does not support extensions string'
             stop run
           end-if

           call "wglGetProcAddress" using by reference
             z"wglChoosePixelFormatARB"
                               returning gl-choose-pixel-format-func
           
           if gl-choose-pixel-format-func = null
             display 'OpenGL does not support required extension'
             stop run
           end-if

           call "wglGetProcAddress" using by reference
             z"wglCreateContextAttribsARB"
                               returning gl-create-context-attribs-func
           
           if gl-create-context-attribs-func = null
             display 'OpenGL does not support required extension'
             stop run
           end-if

           call "wglGetProcAddress" using by reference
             z"wglSwapIntervalEXT"
                               returning gl-swap-interval-func
           
           if gl-swap-interval-func = null
             display 'OpenGL does not support required extension'
             stop run
           end-if

           call "wglMakeCurrent" using by reference null
                                       by reference null
           call "wglDeleteContext" using by value gl-rc
           call "ReleaseDC" using by value gl-dummy-handle
                                  by value gl-dummy-hdc
           call "DestroyWindow" using by value gl-dummy-handle
           
           display 'OpenGL setup was completed!'
           .

       SetupWindow.
           move 3 to style
           move 0 to cb-wnd-extra
           move 0 to cb-cls-extra
           move null to h-icon
           move null to h-cursor
           move null to h-brush
           
           set menu-name     to address of szWindowName
           set class-name    to address of szClassName
           
           set temp-ptr-x to entry "wndproc"
           set lpfn-wnd-proc to temp-ptr-x
           
           display temp-value
           call "sizeCheck"
           display function byte-length(h-icon)
           display function byte-length(uns-int)
           display function byte-length(style)
           display function byte-length(lpfn-wnd-proc)
           display function byte-length(wnd-class-ex)

           display 'Setting up Window class'
           display style
           
           call "GetModuleHandleA" using by value 0
                              returning h-instance
           
           call "printWndClass" using reference wnd-class-ex
           call "RegisterClassA" using by reference wnd-class-ex
               returning mresult

           if mresult = 0
               display 'Failed to register class'
               perform fatal-error
               stop run
           end-if
           display mresult
           perform fatal-error
           
           display 'creating window'
           display h-instance
           move 0 to gl-dummy-handle
           call 'CreateWindowExA' using by value 0
                                   by value class-name
                                   by reference z"DummyWindow"
                                   by value ws-overlappedwindow
                                   by value cw-usedefault
                                   by value cw-usedefault
                                   by value cw-usedefault
                                   by value cw-usedefault
                                   by value 0
                                   by value 0
                                   by reference h-instance
                                   by value 0
                                   returning hwnd
      *    set temp-ptr to address of szClassName
      *    call "CreateWindowExA" using by value 0
      *                           by value szClassName
      *                           by value z"CobolGL"
      *                           by value ws-overlappedwindow
      *                           by value cw-usedefault
      *                           by value cw-usedefault
      *                           by value cw-usedefault
      *                           by value cw-usedefault
      *                           by value 0
      *                           by value 0
      *                           by reference h-instance
      *                           by value 0
      *                           returning hwnd
      *call "showPointer" using by reference gl-dummy-handle
      *display gl-dummy-handle
       perform fatal-error
       
       call "ShowWindow" using by value hwnd by value 5
       call "UpdateWindow" using by value hwnd
       
       perform fatal-error

       move 1 to temp-value
       perform until temp-value = 0
           perform message-loop
       end-perform
       
       display 'done'
           .
       message-loop.
         call "PeekMessageA" using by reference msg
                                       by value hwnd
                                       by value 0
                                       by value 0
                                       by value 1
                                  returning mresult.
           if mresult = 1
               call "TranslateMessage" using by reference msg
           end-if
           if mresult = 1
               call "DispatchMessageA" using by reference msg
           end-if
           .
       fatal-error.
           call "GetLastError"
             returning last-error.
           
           display last-error
       .
       end program cobolgl.

       
       identification division.
       program-id. wndproc.
       
       data division.
       working-storage section.
       copy windows.
       copy windows-constants.


       local-storage section.

       01 last-error usage uns-short.

       linkage section.
       01 hwnd usage pointer.
       01 msg usage uns-int.
       01 mp1 usage uns-int.
       01 mp2 usage uns-int.

       procedure division using by value hwnd
                                by value msg
                                by value mp1
                                by value mp2.             
           evaluate msg
               when wm-quit
                 stop run
               when other
                   call "DefWindowProcA" using by value hwnd
                                                      by value msg
                                                      by value mp1
                                                      by value mp2
           end-evaluate

           call "GetLastError"
             returning last-error
           .
       end program wndproc.
