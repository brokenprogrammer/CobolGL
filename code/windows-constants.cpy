       78 wm-quit    value 12.
       78 cs-vredraw value 1.
       78 cs-hredraw value 2.

       01 ws-overlapped       usage W32-DWORD value h"00000000".
       01 ws-caption          usage W32-DWORD value h"00C00000".
       01 ws-sysmenu          usage W32-DWORD value h"00080000".
       01 ws-thickframe       usage W32-DWORD value h"00040000".
       01 ws-minimizebox      usage W32-DWORD value h"00020000".
       01 ws-maximizebox      usage W32-DWORD value h"00010000".
       01 ws-overlappedwindow usage uns-long.

       78 cw-usedefault       value h"80000000".
