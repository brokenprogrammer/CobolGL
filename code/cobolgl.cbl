       identification division.
       program-id. cobolgl.
       
       data division.
       working-storage section.
       copy windows.

       01 test-var usage char.
       
       local-storage section.
       01 wm-quit usage uns-int value 12.
       01 cs-vredraw usage uns-int value 1.
       01 cs-hredraw usage uns-int value 2.

       01 ws-overlapped       usage W32-DWORD value h"00000000".
       01 ws-caption          usage W32-DWORD value h"00C00000".
       01 ws-sysmenu          usage W32-DWORD value h"00080000".
       01 ws-thickframe       usage W32-DWORD value h"00040000".
       01 ws-minimizebox      usage W32-DWORD value h"00020000".
       01 ws-maximizebox      usage W32-DWORD value h"00010000".
       01 ws-overlappedwindow usage uns-long.

       01 cw-usedefault       usage int       value h"80000000".
      
       01 gl-dummy-int      usage int.
       01 gl-dummy-handle   usage HANDLE.
       01 gl-dummy-hdc      usage HANDLE.
       01 gl-pixel-format usage int.
       01 gl-ok usage int.
       01 gl-set-p-format-r usage int.
       01 gl-rc usage HANDLE.

       01 ex-func usage pointer.
       01 ex-long-string pic x(4096).

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
           stop run
           .
       init.
           compute ws-overlappedwindow = ws-overlapped b-or
             ws-caption b-or
             ws-sysmenu b-or
             ws-thickframe b-or
             ws-minimizebox b-or
             ws-maximizebox

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
                                       returning ex-func
           
           
           call "showPointer" using by reference ex-func

           .
       end program cobolgl.
