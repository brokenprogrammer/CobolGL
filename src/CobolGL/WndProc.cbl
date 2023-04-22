       identification division.
       program-id "WndProc".
       environment division.
       special-names.
       call-convention 74 is winapi.

       working-storage section.
       copy "windows-constants.cpy".

       77 data-pointer pointer is typedef.
       77 uns-int pic 9(9) comp-5 is typedef.

       01 hwnd usage data-pointer.
       01 msg usage uns-int.
       01 w-param usage uns-int.
       01 l-param usage uns-int.

       local-storage section.
       linkage section.
       procedure division using by value hwnd
                                by value msg
                                by value w-param
                                by value l-param.
           evaluate msg
               when wm-quit
                   call winapi "PostQuitMessage" using by value 0
               when other
                   call winapi "DefWindowProcA" using by value hwnd
                                                      by value msg
                                                      by value w-param
                                                      by value l-param
           end-evaluate
           goback.