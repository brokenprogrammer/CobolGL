      $set sourceformat(free)
      $if NOP64 set
      $display Needs 64-bit COBOL environment
      $end
       77  char                   pic s9(2)  comp-5 is typedef.
       77  uns-char               pic  9(2)  comp-5 is typedef.
       77  short                  pic s9(4)  comp-5 is typedef.
       77  uns-short              pic  9(4)  comp-5 is typedef.
       77  int                    pic s9(9)  comp-5 is typedef.
       77  uns-int                pic  9(9)  comp-5 is typedef.
       77  long                   pic s9(18) comp-5 is typedef.
       77  uns-long               pic  9(18) comp-5 is typedef.
       77  l-long                 pic s9(18) comp-5 is typedef.
       77  uns-l-long             pic  9(18) comp-5 is typedef.
       77  d-l-float                         comp-2 is typedef.
       77  d-float                           comp-2 is typedef.
       77  float                             comp-1 is typedef.
       77  proc-pointer           procedure-pointer is typedef.
       77  data-pointer                     pointer is typedef.
       77  void                   pic  9(2)  comp-5 is typedef.
       78  default-convention-val value   0.
       78  cdecl-convention-val   value   0.
       78  pascal-convention-val  value  11.
       78  fast-convention-val    value   2.
       78  std-convention-val     value  74.
       78  sys-convention-val     value  16.
       78  opt-convention-val     value   0.
       78  pasc16-convention-val  value  35.
       78  cdec16-convention-val  value  32.
       78  void-convention-val    value   4.
       78  pascalv-convention-val value  15.

       01 mresult pic x(4) comp-5.

       01  uintptr-t         is typedef       usage uns-int.
       01  va-list           is typedef       usage data-pointer.

       01  ptrdiff-t         is typedef       usage int.
       01  intptr-t          is typedef       usage int.

       01  1-Bool            is typedef       usage int.
       01  wchar-t           is typedef       usage uns-short.
       
       01  ULONG             is typedef       usage int.
       01  USHORT            is typedef       usage uns-short.
       01  PUSHORT           is typedef       usage data-pointer.
       01  UCHAR             is typedef       usage uns-char.
       01  PUCHAR            is typedef       usage data-pointer.
       01  PSZ               is typedef       usage data-pointer.
       01  DWORD             is typedef       usage uns-long.
       01  1BOOL             is typedef       usage int.
       01  1BYTE             is typedef       usage uns-char.
       01  WORD              is typedef       usage uns-short.
       01  2FLOAT            is typedef       usage float.
       01  PFLOAT            is typedef       usage data-pointer.
       01  PBOOL             is typedef       usage data-pointer.
       01  LPBOOL            is typedef       usage data-pointer.
       01  PBYTE             is typedef       usage data-pointer.
       01  LPBYTE            is typedef       usage data-pointer.
       01  PINT              is typedef       usage data-pointer.
       01  LPINT             is typedef       usage data-pointer.
       01  PWORD             is typedef       usage data-pointer.
       01  LPWORD            is typedef       usage data-pointer.
       01  LPLONG            is typedef       usage data-pointer.
       01  PDWORD            is typedef       usage data-pointer.
       01  LPDWORD           is typedef       usage data-pointer.
       01  LPVOID            is typedef       usage data-pointer.
       01  LPCVOID           is typedef       usage data-pointer.
       01  1INT              is typedef       usage int.
       01  UINT              is typedef       usage uns-int.
       01  PUINT             is typedef       usage data-pointer.

       01  errno-t           is typedef       usage int.
       01  wint-t            is typedef       usage uns-short.
       01  wctype-t          is typedef       usage uns-short.
       01  1--time32-t       is typedef       usage long.
       01  1--time64-t       is typedef       usage l-long.
       01  1--crt-locale-data-public          is typedef.
        02 1-locale-pctype   usage data-pointer.
        02 1-locale-mb-cur-max                usage int.
        02 1-locale-lc-codepage               usage uns-int.

       01  2--crt-locale-data-public          is typedef
                             usage
           1--crt-locale-data-public.
       01  1--crt-locale-pointers             is typedef.
        02 locinfo           usage data-pointer.
        02 mbcinfo           usage data-pointer.

       01  2--crt-locale-pointers             is typedef
                             usage
           1--crt-locale-pointers.
       01  1-locale-t        is typedef       usage data-pointer.
       01  1-Mbstatet        is typedef.
        02 1-wchar           usage uns-long.
        02 1-byte            usage uns-short.
        02 1-state           usage uns-short.
        02 filler            pic x(4).

       01  2-Mbstatet        is typedef       usage 1-mbstatet.
       01  mbstate-t         is typedef       usage 2-mbstatet.
       01  time-t            is typedef       usage l-long.

       01  size-t            is typedef       usage int.

       01  INT8              is typedef       usage char.
       01  PINT8             is typedef       usage data-pointer.
       01  INT16             is typedef       usage short.
       01  PINT16            is typedef       usage data-pointer.
       01  INT32             is typedef       usage int.
       01  PINT32            is typedef       usage data-pointer.
       01  INT64             is typedef       usage l-long.
       01  PINT64            is typedef       usage data-pointer.
       01  UINT8             is typedef       usage uns-char.
       01  PUINT8            is typedef       usage data-pointer.
       01  UINT16            is typedef       usage uns-short.
       01  PUINT16           is typedef       usage data-pointer.
       01  UINT32            is typedef       usage uns-int.
       01  PUINT32           is typedef       usage data-pointer.
       01  UINT64            is typedef       usage uns-l-long.
       01  PUINT64           is typedef       usage data-pointer.
       01  LONG32            is typedef       usage int.
       01  PLONG32           is typedef       usage data-pointer.
       01  ULONG32           is typedef       usage uns-int.
       01  PULONG32          is typedef       usage data-pointer.
       01  DWORD32           is typedef       usage uns-int.
       01  PDWORD32          is typedef       usage data-pointer.
       01  INT-PTR           is typedef       usage int.
       01  PINT-PTR          is typedef       usage data-pointer.
       01  UINT-PTR          is typedef       usage uns-int.
       01  PUINT-PTR         is typedef       usage data-pointer.
       01  LONG-PTR          is typedef       usage long.
       01  PLONG-PTR         is typedef       usage data-pointer.
       01  ULONG-PTR         is typedef       usage uns-long.
       01  PULONG-PTR        is typedef       usage data-pointer.
       01  1--ptr64          is typedef       usage data-pointer.

       01  HANDLE64          is typedef       usage int.
       01  UHALF-PTR         is typedef       usage uns-short.
       01  PUHALF-PTR        is typedef       usage data-pointer.
       01  HALF-PTR          is typedef       usage short.
       01  PHALF-PTR         is typedef       usage data-pointer.
       01  SHANDLE-PTR       is typedef       usage long.
       01  HANDLE-PTR        is typedef       usage uns-long.
       01  1SIZE-T           is typedef       usage uns-long.
       01  PSIZE-T           is typedef       usage data-pointer.
       01  SSIZE-T           is typedef       usage long.
       01  PSSIZE-T          is typedef       usage data-pointer.
       01  DWORD-PTR         is typedef       usage uns-long.
       01  PDWORD-PTR        is typedef       usage data-pointer.
       01  LONG64            is typedef       usage l-long.
       01  PLONG64           is typedef       usage data-pointer.
       01  ULONG64           is typedef       usage uns-l-long.
       01  PULONG64          is typedef       usage data-pointer.
       01  DWORD64           is typedef       usage uns-l-long.
       01  PDWORD64          is typedef       usage data-pointer.
       01  KAFFINITY         is typedef       usage uns-long.
       01  PKAFFINITY        is typedef       usage data-pointer.
       01  PVOID             is typedef       usage data-pointer.

       01 HANDLE is typedef usage PVOID.
       01 HINSTANCE is typedef usage PVOID.


* Warning, already defined name: __ptr64
       01  2CHAR             is typedef       usage char.
       01  1SHORT            is typedef       usage short.
       01  1LONG             is typedef       usage long.

* Warning, already defined name: INT
       01  WCHAR             is typedef       usage uns-short.
       01  PWCHAR            is typedef       usage data-pointer.
       01  LPWCH             is typedef       usage data-pointer.
       01  PWCH              is typedef       usage data-pointer.
       01  LPCWCH            is typedef       usage data-pointer.
       01  PCWCH             is typedef       usage data-pointer.
       01  NWPSTR            is typedef       usage data-pointer.
       01  LPWSTR            is typedef       usage data-pointer.
       01  PWSTR             is typedef       usage data-pointer.
       01  PZPWSTR           is typedef       usage data-pointer.
       01  PCZPWSTR          is typedef       usage data-pointer.
       01  LPUWSTR           is typedef       usage data-pointer.
       01  PUWSTR            is typedef       usage data-pointer.
       01  LPCWSTR           is typedef       usage data-pointer.
       01  PCWSTR            is typedef       usage data-pointer.
       01  PZPCWSTR          is typedef       usage data-pointer.
       01  PCZPCWSTR         is typedef       usage data-pointer.
       01  LPCUWSTR          is typedef       usage data-pointer.
       01  PCUWSTR           is typedef       usage data-pointer.
       01  PZZWSTR           is typedef       usage data-pointer.
       01  PCZZWSTR          is typedef       usage data-pointer.
       01  PUZZWSTR          is typedef       usage data-pointer.
       01  PCUZZWSTR         is typedef       usage data-pointer.
       01  PNZWCH            is typedef       usage data-pointer.
       01  PCNZWCH           is typedef       usage data-pointer.
       01  PUNZWCH           is typedef       usage data-pointer.
       01  PCUNZWCH          is typedef       usage data-pointer.
       01  LPCWCHAR          is typedef       usage data-pointer.
       01  PCWCHAR           is typedef       usage data-pointer.
       01  LPCUWCHAR         is typedef       usage data-pointer.
       01  PCUWCHAR          is typedef       usage data-pointer.
       01  UCSCHAR           is typedef       usage uns-long.
       01  PUCSCHAR          is typedef       usage data-pointer.
       01  PCUCSCHAR         is typedef       usage data-pointer.
       01  PUCSSTR           is typedef       usage data-pointer.
       01  PUUCSSTR          is typedef       usage data-pointer.
       01  PCUCSSTR          is typedef       usage data-pointer.
       01  PCUUCSSTR         is typedef       usage data-pointer.
       01  PUUCSCHAR         is typedef       usage data-pointer.
       01  PCUUCSCHAR        is typedef       usage data-pointer.
       01  PCHAR             is typedef       usage data-pointer.
       01  LPCH              is typedef       usage data-pointer.
       01  PCH               is typedef       usage data-pointer.
       01  LPCCH             is typedef       usage data-pointer.
       01  PCCH              is typedef       usage data-pointer.
       01  NPSTR             is typedef       usage data-pointer.
       01  LPSTR             is typedef       usage data-pointer.
       01  PSTR              is typedef       usage data-pointer.
       01  PZPSTR            is typedef       usage data-pointer.
       01  PCZPSTR           is typedef       usage data-pointer.
       01  LPCSTR            is typedef       usage data-pointer.
       01  PCSTR             is typedef       usage data-pointer.
       01  PZPCSTR           is typedef       usage data-pointer.
       01  PCZPCSTR          is typedef       usage data-pointer.
       01  PZZSTR            is typedef       usage data-pointer.
       01  PCZZSTR           is typedef       usage data-pointer.
       01  PNZCH             is typedef       usage data-pointer.
       01  PCNZCH            is typedef       usage data-pointer.
       01  TCHAR             is typedef       usage char.
       01  PTCHAR            is typedef       usage data-pointer.
       01  TBYTE             is typedef       usage uns-char.
       01  PTBYTE            is typedef       usage data-pointer.
       01  LPTCH             is typedef       usage data-pointer.
       01  PTCH              is typedef       usage data-pointer.
       01  LPCTCH            is typedef       usage data-pointer.
       01  PCTCH             is typedef       usage data-pointer.
       01  PTSTR             is typedef       usage data-pointer.
       01  LPTSTR            is typedef       usage data-pointer.
       01  PUTSTR            is typedef       usage data-pointer.
       01  LPUTSTR           is typedef       usage data-pointer.
       01  PCTSTR            is typedef       usage data-pointer.
       01  LPCTSTR           is typedef       usage data-pointer.
       01  PCUTSTR           is typedef       usage data-pointer.
       01  LPCUTSTR          is typedef       usage data-pointer.
       01  PZZTSTR           is typedef       usage data-pointer.
       01  PUZZTSTR          is typedef       usage data-pointer.
       01  PCZZTSTR          is typedef       usage data-pointer.
       01  PCUZZTSTR         is typedef       usage data-pointer.
       01  PZPTSTR           is typedef       usage data-pointer.
       01  PNZTCH            is typedef       usage data-pointer.
       01  PUNZTCH           is typedef       usage data-pointer.
       01  PCNZTCH           is typedef       usage data-pointer.
       01  PCUNZTCH          is typedef       usage data-pointer.
       01  PSHORT            is typedef       usage data-pointer.
       01  PLONG             is typedef       usage data-pointer.
       01  1-PROCESSOR-NUMBER                 is typedef.
        02 1group            usage uns-short.
        02 1number           usage uns-char.
        02 reserved          usage uns-char.

       01  PROCESSOR-NUMBER  is typedef       usage 1-processor-number.
       01  PPROCESSOR-NUMBER is typedef       usage data-pointer.
       01  1-GROUP-AFFINITY  is typedef.
        02 mask              usage uns-long.
        02 1group            usage uns-short.
        02 reserved occurs 3 usage uns-short.

       01  GROUP-AFFINITY    is typedef       usage 1-group-affinity.
       01  PGROUP-AFFINITY   is typedef       usage data-pointer.
       01  1HANDLE           is typedef       usage data-pointer.
       01  PHANDLE           is typedef       usage data-pointer.
       01  FCHAR             is typedef       usage uns-char.
       01  FSHORT            is typedef       usage uns-short.
       01  FLONG             is typedef       usage uns-long.
       01  HRESULT           is typedef       usage long.
       01  CCHAR             is typedef       usage char.
       01  LCID              is typedef       usage uns-long.
       01  PLCID             is typedef       usage data-pointer.
       01  LANGID            is typedef       usage uns-short.
       78  unspecified-compartment-id         value           0.
       78  default-compartment-id             value           1.

       01  COMPARTMENT-ID    is typedef usage uns-int.
       01  PCOMPARTMENT-ID   is typedef       usage data-pointer.
       01  1-FLOAT128        is typedef.
        02 lowpart           usage l-long.
        02 highpart          usage l-long.

       01  FLOAT128          is typedef       usage 1-float128.
       01  PFLOAT128         is typedef       usage data-pointer.
       01  LONGLONG          is typedef       usage l-long.
       01  ULONGLONG         is typedef       usage uns-l-long.
       01  PLONGLONG         is typedef       usage data-pointer.
       01  PULONGLONG        is typedef       usage data-pointer.
       01  USN               is typedef       usage l-long.
       01  1-LARGE-INTEGER   is typedef.
        02 2-LARGE-INTEGER.
         03  filler.
          04 lowpart         usage uns-long.
          04 highpart        usage long.
        02 filler redefines 2-LARGE-INTEGER.
         03  u.
          04 lowpart         usage uns-long.
          04 highpart        usage long.
        02 filler redefines 2-LARGE-INTEGER.
         03  quadpart        usage l-long.
         03  filler          pic x(8).

       01  LARGE-INTEGER     is typedef       usage 1-large-integer.
       01  PLARGE-INTEGER    is typedef       usage data-pointer.
       01  1-ULARGE-INTEGER  is typedef.
        02 2-ULARGE-INTEGER.
         03  filler.
          04 lowpart         usage uns-long.
          04 highpart        usage uns-long.
        02 filler redefines 2-ULARGE-INTEGER.
         03  u.
          04 lowpart         usage uns-long.
          04 highpart        usage uns-long.
        02 filler redefines 2-ULARGE-INTEGER.
         03  quadpart        usage uns-l-long.
         03  filler          pic x(8).

       01  ULARGE-INTEGER    is typedef       usage 1-ularge-integer.
       01  PULARGE-INTEGER   is typedef       usage data-pointer.
       01  RTL-REFERENCE-COUNT                is typedef
                             usage long.
       01  PRTL-REFERENCE-COUNT               is typedef
                             usage data-pointer.
       01  RTL-REFERENCE-COUNT32              is typedef
                             usage long.
       01  PRTL-REFERENCE-COUNT32             is typedef
                             usage data-pointer.
       01  1-LUID            is typedef.
        02 lowpart           usage uns-long.
        02 highpart          usage long.

       01  LUID              is typedef       usage 1-luid.
       01  PLUID             is typedef       usage data-pointer.
       01  DWORDLONG         is typedef       usage uns-l-long.
       01  PDWORDLONG        is typedef       usage data-pointer.
      
       01  1BOOLEAN          is typedef       usage uns-char.
       01  PBOOLEAN          is typedef       usage data-pointer.
       01  1-LIST-ENTRY      is typedef.
        02 flink             usage data-pointer.
        02 1blink            usage data-pointer.

       01  LIST-ENTRY        is typedef       usage 1-list-entry.
       01  PLIST-ENTRY       is typedef       usage data-pointer.
       01  PRLIST-ENTRY      is typedef       usage data-pointer.
       01  1-SINGLE-LIST-ENTRY                is typedef.
        02 1next             usage data-pointer.

       01  SINGLE-LIST-ENTRY is typedef       usage
           1-single-list-entry.
       01  PSINGLE-LIST-ENTRY                 is typedef
                             usage data-pointer.
       01  LIST-ENTRY32      is typedef.
        02 flink             usage uns-long.
        02 1blink            usage uns-long.

       01  1LIST-ENTRY32     is typedef       usage list-entry32.
       01  PLIST-ENTRY32     is typedef       usage data-pointer.
       01  LIST-ENTRY64      is typedef.
        02 flink             usage uns-l-long.
        02 1blink            usage uns-l-long.

       01  1LIST-ENTRY64     is typedef       usage list-entry64.
       01  PLIST-ENTRY64     is typedef       usage data-pointer.
       01  1-GUID            is typedef.
        02 data1             usage uns-long.
        02 data2             usage uns-short.
        02 data3             usage uns-short.
        02 data4 occurs 8    usage uns-char.
        02 filler            pic x(4).

       01  GUID              is typedef       usage 1-guid.
       01  LPGUID            is typedef       usage data-pointer.
       01  LPCGUID           is typedef       usage data-pointer.
       01  IID               is typedef       usage guid.
       01  LPIID             is typedef       usage data-pointer.
       01  CLSID             is typedef       usage guid.
       01  LPCLSID           is typedef       usage data-pointer.
       01  FMTID             is typedef       usage guid.
       01  LPFMTID           is typedef       usage data-pointer.

      
       01  1EXCEPTION-DISPOSITION             is typedef
                             usage int.

        *> 02 filler occurs 0   usage size-t.
       01  EXCEPTION-ROUTINE is typedef       usage int.
       *> 01  1--C-ASSERT       is typedef.
       01  KSPIN-LOCK        is typedef       usage uns-long.
       01  PKSPIN-LOCK       is typedef       usage data-pointer.

       01  1-XSAVE-CET-U-FORMAT               is typedef.
        02 ia32cetumsr       usage uns-l-long.
        02 ia32pl3sspmsr     usage uns-l-long.

       01  XSAVE-CET-U-FORMAT                 is typedef
                             usage
           1-xsave-cet-u-format.
       01  PXSAVE-CET-U-FORMAT                is typedef
                             usage data-pointer.

       01  1-XSTATE-CONTEXT  is typedef.
        02 mask              usage uns-l-long.
        02 1length           usage uns-long.
        02 reserved1         usage uns-long.
        02 pxsave-area       usage int.
        02 filler            pic x(4).
        02 reserved2         usage uns-long.
        02 buffer            usage data-pointer.
        02 reserved3         usage uns-long.

       01  XSTATE-CONTEXT    is typedef       usage 1-xstate-context.
       01  PXSTATE-CONTEXT   is typedef       usage data-pointer.
       01  1-KERNEL-CET-CONTEXT               is typedef.
        02 ssp               usage uns-l-long.
        02 rip               usage uns-l-long.
        02 segcs             usage uns-short.
        02 filler.
         03  1filler.
          04 allflags        usage uns-short.
          04 filler          pic x(2).
         03  filler redefines 1filler.
          04 filler.
           05  usewrss.
            06 usewrss       usage uns-int.                 *> 1 Bit
           05  filler redefines usewrss.
            06 popshadowstackone              usage uns-int.*> 1 Bit
           05  filler redefines usewrss.
            06 unused        usage uns-int.                 *> 14 Bits
        02 fill occurs 2     usage uns-short.

       01  KERNEL-CET-CONTEXT                 is typedef
                             usage
           1-kernel-cet-context.
       01  PKERNEL-CET-CONTEXT                is typedef
                             usage data-pointer.

* Warning, already defined name: __C_ASSERT__
       01  1-SCOPE-TABLE-AMD64                is typedef.
        02 1count            usage uns-long.
        02 scoperecord occurs 1.
         03  beginaddress    usage uns-long.
         03  endaddress      usage uns-long.
         03  handleraddress  usage uns-long.
         03  jumptarget      usage uns-long.

       01  SCOPE-TABLE-AMD64 is typedef       usage
           1-scope-table-amd64.
       01  PSCOPE-TABLE-AMD64                 is typedef
                             usage data-pointer.
       01  1-SCOPE-TABLE-ARM is typedef.
        02 1count            usage uns-long.
        02 scoperecord occurs 1.
         03  beginaddress    usage uns-long.
         03  endaddress      usage uns-long.
         03  handleraddress  usage uns-long.
         03  jumptarget      usage uns-long.

       01  SCOPE-TABLE-ARM   is typedef       usage 1-scope-table-arm.
       01  PSCOPE-TABLE-ARM  is typedef       usage data-pointer.
       01  1-SCOPE-TABLE-ARM64                is typedef.
        02 1count            usage uns-long.
        02 scoperecord occurs 1.
         03  beginaddress    usage uns-long.
         03  endaddress      usage uns-long.
         03  handleraddress  usage uns-long.
         03  jumptarget      usage uns-long.

       01  SCOPE-TABLE-ARM64 is typedef       usage
           1-scope-table-arm64.
       01  PSCOPE-TABLE-ARM64                 is typedef
                             usage data-pointer.
       01  1-ARM64-NT-NEON128                 is typedef.
        02 2-ARM64-NT-NEON128.
         03  filler.
          04 1low            usage uns-l-long.
          04 1high           usage l-long.
        02 filler redefines 2-ARM64-NT-NEON128.
         03  d occurs 2      usage d-float.
        02 filler redefines 2-ARM64-NT-NEON128.
         03  s occurs 4      usage float.
        02 filler redefines 2-ARM64-NT-NEON128.
         03  h occurs 8      usage uns-short.
        02 filler redefines 2-ARM64-NT-NEON128.
         03  b occurs 16     usage uns-char.

       01  ARM64-NT-NEON128  is typedef       usage 1-arm64-nt-neon128.
       01  PARM64-NT-NEON128 is typedef       usage data-pointer.

       01  PARM64-RUNTIME-FUNCTION            is typedef
                             usage data-pointer.
       01  1-DISPATCHER-CONTEXT-NONVOLREG     is typedef.
        02 2-DISPATCHER-CONTEXT-NONVOLREG.
         03  buffer occurs 152                usage uns-char.
        02 filler redefines 2-DISPATCHER-CONTEXT-NONVOLREG.
         03  filler.
          04 gpnvregs occurs 11               usage uns-l-long.
          04 fpnvregs occurs 8                usage d-float.

       01  DISPATCHER-CONTEXT-NONVOLREG-A     is typedef
                             usage
           1-dispatcher-context-nonvolreg.

* Warning, already defined name: __C_ASSERT__

       01  1-DISPATCHER-CONTEXT-ARM64         is typedef.
        02 controlpc         usage uns-long.
        02 imagebase         usage uns-long.
        02 functionentry     usage data-pointer.
        02 establisherframe  usage uns-long.
        02 targetpc          usage uns-long.
        02 parm64-nt-context usage int.
        02 pexception-routine                 usage int.
        02 handlerdata       usage data-pointer.
        02 historytable      usage data-pointer.
        02 scopeindex        usage uns-long.
        02 controlpcisunwound                 usage uns-char.
        02 filler            pic x(7).
        02 nonvolatileregisters               usage data-pointer.

       01  DISPATCHER-CONTEXT-ARM64           is typedef
                             usage
           1-dispatcher-context-arm64.
       01  PDISPATCHER-CONTEXT-ARM64          is typedef
                             usage data-pointer.
       01  1-KNONVOLATILE-CONTEXT-POINTER     is typedef.
        02 x19               usage data-pointer.
        02 x20               usage data-pointer.
        02 x21               usage data-pointer.
        02 x22               usage data-pointer.
        02 x23               usage data-pointer.
        02 x24               usage data-pointer.
        02 x25               usage data-pointer.
        02 x26               usage data-pointer.
        02 x27               usage data-pointer.
        02 x28               usage data-pointer.
        02 fp                usage data-pointer.
        02 lr                usage data-pointer.
        02 d8                usage data-pointer.
        02 d9                usage data-pointer.
        02 d10               usage data-pointer.
        02 d11               usage data-pointer.
        02 d12               usage data-pointer.
        02 d13               usage data-pointer.
        02 d14               usage data-pointer.
        02 d15               usage data-pointer.

       01  KNONVOLATILE-CONTEXT-POINTERS      is typedef
                             usage
           1-knonvolatile-context-pointer.
       01  PKNONVOLATILE-CONTEXT-POINTERS     is typedef
                             usage data-pointer.
       
       01  1-FLOATING-SAVE-AREA               is typedef.
        02 controlword       usage uns-long.
        02 statusword        usage uns-long.
        02 tagword           usage uns-long.
        02 erroroffset       usage uns-long.
        02 errorselector     usage uns-long.
        02 dataoffset        usage uns-long.
        02 dataselector      usage uns-long.
        02 registerarea occurs 80             usage uns-char.
        02 spare0            usage uns-long.

       01  FLOATING-SAVE-AREA                 is typedef
                             usage
           1-floating-save-area.
       01  PFLOATING-SAVE-AREA                is typedef
                             usage data-pointer.

* Warning, already defined name: __C_ASSERT__

       01  CONTEXT           is typedef       usage int.
       01  1-LDT-ENTRY       is typedef.
        02 limitlow          usage uns-short.
        02 baselow           usage uns-short.
        02 filler            pic x(4).
        02 highword.
         03  highword.
          04 bytes.
           05  basemid       usage uns-char.
           05  flags1        usage uns-char.
           05  flags2        usage uns-char.
           05  basehi        usage uns-char.
          04 filler          pic x(4).
         03  filler redefines highword.
          04 bits.
           05  basemid.
            06 basemid       usage uns-int.                 *> 8 Bits
           05  filler redefines basemid.
            06 1type         usage uns-int.                 *> 5 Bits
           05  filler redefines basemid.
            06 dpl           usage uns-int.                 *> 2 Bits
           05  filler redefines basemid.
            06 pres          usage uns-int.                 *> 1 Bit
           05  filler redefines basemid.
            06 limithi       usage uns-int.                 *> 4 Bits
           05  filler redefines basemid.
            06 sys           usage uns-int.                 *> 1 Bit
           05  filler redefines basemid.
            06 reserved-0    usage uns-int.                 *> 1 Bit
           05  filler redefines basemid.
            06 default-big   usage uns-int.                 *> 1 Bit
           05  filler redefines basemid.
            06 granularity   usage uns-int.                 *> 1 Bit
           05  filler redefines basemid.
            06 basehi        usage uns-int.                 *> 8 Bits
           05  filler        pic x(4).

       01  LDT-ENTRY         is typedef       usage 1-ldt-entry.
       01  PLDT-ENTRY        is typedef       usage data-pointer.
       01  2-KNONVOLATILE-CONTEXT-POINTER     is typedef.
        02 dummy             usage uns-long.

       01  1KNONVOLATILE-CONTEXT-POINTERS     is typedef
                             usage
           2-knonvolatile-context-pointer.
       01  1PKNONVOLATILE-CONTEXT-POINTER     is typedef
                             usage data-pointer.
       01  1-WOW64-FLOATING-SAVE-AREA         is typedef.
        02 controlword       usage uns-long.
        02 statusword        usage uns-long.
        02 tagword           usage uns-long.
        02 erroroffset       usage uns-long.
        02 errorselector     usage uns-long.
        02 dataoffset        usage uns-long.
        02 dataselector      usage uns-long.
        02 registerarea occurs 80             usage uns-char.
        02 cr0npxstate       usage uns-long.

       01  WOW64-FLOATING-SAVE-AREA           is typedef
                             usage
           1-wow64-floating-save-area.
       01  PWOW64-FLOATING-SAVE-AREA          is typedef
                             usage data-pointer.
       01  1-WOW64-CONTEXT   is typedef.
        02 contextflags      usage uns-long.
        02 dr0               usage uns-long.
        02 dr1               usage uns-long.
        02 dr2               usage uns-long.
        02 dr3               usage uns-long.
        02 dr6               usage uns-long.
        02 dr7               usage uns-long.
        02 floatsave         usage
           wow64-floating-save-area.
        02 seggs             usage uns-long.
        02 segfs             usage uns-long.
        02 seges             usage uns-long.
        02 segds             usage uns-long.
        02 edi               usage uns-long.
        02 1esi              usage uns-long.
        02 ebx               usage uns-long.
        02 edx               usage uns-long.
        02 ecx               usage uns-long.
        02 eax               usage uns-long.
        02 ebp               usage uns-long.
        02 eip               usage uns-long.
        02 segcs             usage uns-long.
        02 eflags            usage uns-long.
        02 esp               usage uns-long.
        02 segss             usage uns-long.
        02 extendedregisters occurs 512       usage uns-char.

       01  WOW64-CONTEXT     is typedef       usage 1-wow64-context.
       01  PWOW64-CONTEXT    is typedef       usage data-pointer.
       01  1-WOW64-LDT-ENTRY is typedef.
        02 limitlow          usage uns-short.
        02 baselow           usage uns-short.
        02 filler            pic x(4).
        02 highword.
         03  highword.
          04 bytes.
           05  basemid       usage uns-char.
           05  flags1        usage uns-char.
           05  flags2        usage uns-char.
           05  basehi        usage uns-char.
          04 filler          pic x(4).
         03  filler redefines highword.
          04 bits.
           05  basemid.
            06 basemid       usage uns-int.                 *> 8 Bits
           05  filler redefines basemid.
            06 1type         usage uns-int.                 *> 5 Bits
           05  filler redefines basemid.
            06 dpl           usage uns-int.                 *> 2 Bits
           05  filler redefines basemid.
            06 pres          usage uns-int.                 *> 1 Bit
           05  filler redefines basemid.
            06 limithi       usage uns-int.                 *> 4 Bits
           05  filler redefines basemid.
            06 sys           usage uns-int.                 *> 1 Bit
           05  filler redefines basemid.
            06 reserved-0    usage uns-int.                 *> 1 Bit
           05  filler redefines basemid.
            06 default-big   usage uns-int.                 *> 1 Bit
           05  filler redefines basemid.
            06 granularity   usage uns-int.                 *> 1 Bit
           05  filler redefines basemid.
            06 basehi        usage uns-int.                 *> 8 Bits
           05  filler        pic x(4).

       01  WOW64-LDT-ENTRY   is typedef       usage 1-wow64-ldt-entry.
       01  PWOW64-LDT-ENTRY  is typedef       usage data-pointer.
       01  1-WOW64-DESCRIPTOR-TABLE-ENTRY     is typedef.
        02 selector          usage uns-long.
        02 1descriptor       usage wow64-ldt-entry.

       01  WOW64-DESCRIPTOR-TABLE-ENTRY       is typedef
                             usage
           1-wow64-descriptor-table-entry.
       01  PWOW64-DESCRIPTOR-TABLE-ENTRY      is typedef
                             usage data-pointer.
       01  1-EXCEPTION-RECORD                 is typedef.
        02 exceptioncode     usage uns-long.
        02 exceptionflags    usage uns-long.
        02 exceptionrecord   usage data-pointer.
        02 exceptionaddress  usage data-pointer.
        02 numberparameters  usage uns-long.
        02 exceptioninformation occurs 15     usage uns-long.

       01  EXCEPTION-RECORD  is typedef       usage 1-exception-record.
       01  PEXCEPTION-RECORD is typedef       usage data-pointer.
       01  1-EXCEPTION-RECORD32               is typedef.
        02 exceptioncode     usage uns-long.
        02 exceptionflags    usage uns-long.
        02 exceptionrecord   usage uns-long.
        02 exceptionaddress  usage uns-long.
        02 numberparameters  usage uns-long.
        02 exceptioninformation occurs 15     usage uns-long.

       01  EXCEPTION-RECORD32                 is typedef
                             usage
           1-exception-record32.
       01  PEXCEPTION-RECORD32                is typedef
                             usage data-pointer.
       01  1-EXCEPTION-RECORD64               is typedef.
        02 exceptioncode     usage uns-long.
        02 exceptionflags    usage uns-long.
        02 exceptionrecord   usage uns-l-long.
        02 exceptionaddress  usage uns-l-long.
        02 numberparameters  usage uns-long.
        02 1--unusedalignment                 usage uns-long.
        02 exceptioninformation occurs 15     usage uns-l-long.

       01  EXCEPTION-RECORD64                 is typedef
                             usage
           1-exception-record64.
       01  PEXCEPTION-RECORD64                is typedef
                             usage data-pointer.

       01  1-EXCEPTION-POINTERS               is typedef.
        02 exceptionrecord   usage data-pointer.
        02 pcontext          usage int.
        02 filler            pic x(4).

       01  EXCEPTION-POINTERS                 is typedef
                             usage
           1-exception-pointers.
       01  PEXCEPTION-POINTERS                is typedef
                             usage data-pointer.
       01  PACCESS-TOKEN     is typedef       usage data-pointer.
       01  PSECURITY-DESCRIPTOR               is typedef
                             usage data-pointer.
       01  PSID              is typedef       usage data-pointer.
       01  PCLAIMS-BLOB      is typedef       usage data-pointer.
       01  ACCESS-MASK       is typedef       usage uns-long.
       01  PACCESS-MASK      is typedef       usage data-pointer.
       01  1-GENERIC-MAPPING is typedef.
        02 genericread       usage uns-long.
        02 genericwrite      usage uns-long.
        02 genericexecute    usage uns-long.
        02 genericall        usage uns-long.

       01  GENERIC-MAPPING   is typedef       usage 1-generic-mapping.
       01  PGENERIC-MAPPING  is typedef       usage data-pointer.
       01  1-LUID-AND-ATTRIBUTES              is typedef.
        02 1luid             usage luid.
        02 1attributes       usage uns-long.

       01  LUID-AND-ATTRIBUTES                is typedef
                             usage
           1-luid-and-attributes.
       01  PLUID-AND-ATTRIBUTES               is typedef
                             usage data-pointer.
       01  LUID-AND-ATTRIBUTES-ARRAY          is typedef.
        02 filler occurs 1   usage
           luid-and-attributes.
       01  PLUID-AND-ATTRIBUTES-ARRAY         is typedef
                             usage data-pointer.
       01  1-SID-IDENTIFIER-AUTHORITY         is typedef.
        02 1value occurs 6   usage uns-char.

       01  SID-IDENTIFIER-AUTHORITY           is typedef
                             usage
           1-sid-identifier-authority.
       01  PSID-IDENTIFIER-AUTHORITY          is typedef
                             usage data-pointer.
       01  1-SID             is typedef.
        02 revision          usage uns-char.
        02 subauthoritycount usage uns-char.
        02 identifierauthority                usage
           sid-identifier-authority.
        02 subauthority occurs 1              usage uns-long.

       01  SID               is typedef       usage 1-sid.
       01  PISID             is typedef       usage data-pointer.
       01  1-SE-SID          is typedef.
        02 2-SE-SID.
         03  1sid            usage sid.
         03  filler          pic x(112).
        02 filler redefines 2-SE-SID.
         03  buffer occurs 128                usage uns-char.

       01  SE-SID            is typedef       usage 1-se-sid.
       01  PSE-SID           is typedef       usage data-pointer.
       01  1-SID-NAME-USE    is typedef usage uns-int.
       78  sidtypeuser                        value           1.
       78  sidtypegroup                       value           2.
       78  sidtypedomain                      value           3.
       78  sidtypealias                       value           4.
       78  sidtypewellknowngroup              value           5.
       78  sidtypedeletedaccount              value           6.
       78  sidtypeinvalid                     value           7.
       78  sidtypeunknown                     value           8.
       78  sidtypecomputer                    value           9.
       78  sidtypelabel                       value          10.
       78  sidtypelogonsession                value          11.

       01  SID-NAME-USE      is typedef       usage 1-sid-name-use.
       01  PSID-NAME-USE     is typedef       usage data-pointer.
       01  1-SID-AND-ATTRIBUTES               is typedef.
        02 1sid              usage data-pointer.
        02 1attributes       usage uns-long.

       01  SID-AND-ATTRIBUTES                 is typedef
                             usage
           1-sid-and-attributes.
       01  PSID-AND-ATTRIBUTES                is typedef
                             usage data-pointer.
       01  SID-AND-ATTRIBUTES-ARRAY           is typedef.
        02 filler occurs 1   usage sid-and-attributes.
       01  PSID-AND-ATTRIBUTES-ARRAY          is typedef
                             usage data-pointer.
       01  SID-HASH-ENTRY    is typedef       usage uns-long.
       01  PSID-HASH-ENTRY   is typedef       usage data-pointer.
       01  1-SID-AND-ATTRIBUTES-HASH          is typedef.
        02 sidcount          usage uns-long.
        02 sidattr           usage data-pointer.
        02 hash occurs 32    usage uns-long.

       01  SID-AND-ATTRIBUTES-HASH            is typedef
                             usage
           1-sid-and-attributes-hash.
       01  PSID-AND-ATTRIBUTES-HASH           is typedef
                             usage data-pointer.
       78  winnullsid                         value           0.
       78  winworldsid                        value           1.
       78  winlocalsid                        value           2.
       78  wincreatorownersid                 value           3.
       78  wincreatorgroupsid                 value           4.
       78  wincreatorownerserversid           value           5.
       78  wincreatorgroupserversid           value           6.
       78  winntauthoritysid                  value           7.
       78  windialupsid                       value           8.
       78  winnetworksid                      value           9.
       78  winbatchsid                        value          10.
       78  wininteractivesid                  value          11.
       78  winservicesid                      value          12.
       78  winanonymoussid                    value          13.
       78  winproxysid                        value          14.
       78  winenterprisecontrollerssid        value          15.
       78  winselfsid                         value          16.
       78  winauthenticatedusersid            value          17.
       78  winrestrictedcodesid               value          18.
       78  winterminalserversid               value          19.
       78  winremotelogonidsid                value          20.
       78  winlogonidssid                     value          21.
       78  winlocalsystemsid                  value          22.
       78  winlocalservicesid                 value          23.
       78  winnetworkservicesid               value          24.
       78  winbuiltindomainsid                value          25.
       78  winbuiltinadministratorssid        value          26.
       78  winbuiltinuserssid                 value          27.
       78  winbuiltinguestssid                value          28.
       78  winbuiltinpoweruserssid            value          29.
       78  winbuiltinaccountoperatorssid      value          30.
       78  winbuiltinsystemoperatorssid       value          31.
       78  winbuiltinprintoperatorssid        value          32.
       78  winbuiltinbackupoperatorssid       value          33.
       78  winbuiltinreplicatorsid            value          34.
       78  winbuiltinprewindows2000compat     value          35.
       78  winbuiltinremotedesktopuserssi     value          36.
       78  winbuiltinnetworkconfiguration     value          37.
       78  winaccountadministratorsid         value          38.
       78  winaccountguestsid                 value          39.
       78  winaccountkrbtgtsid                value          40.
       78  winaccountdomainadminssid          value          41.
       78  winaccountdomainuserssid           value          42.
       78  winaccountdomainguestssid          value          43.
       78  winaccountcomputerssid             value          44.
       78  winaccountcontrollerssid           value          45.
       78  winaccountcertadminssid            value          46.
       78  winaccountschemaadminssid          value          47.
       78  winaccountenterpriseadminssid      value          48.
       78  winaccountpolicyadminssid          value          49.
       78  winaccountrasandiasserverssid      value          50.
       78  winntlmauthenticationsid           value          51.
       78  windigestauthenticationsid         value          52.
       78  winschannelauthenticationsid       value          53.
       78  winthisorganizationsid             value          54.
       78  winotherorganizationsid            value          55.
       78  winbuiltinincomingforesttrustb     value          56.
       78  winbuiltinperfmonitoringuserss     value          57.
       78  winbuiltinperflogginguserssid      value          58.
       78  winbuiltinauthorizationaccesss     value          59.
       78  winbuiltinterminalserverlicens     value          60.
       78  winbuiltindcomuserssid             value          61.
       78  winbuiltiniuserssid                value          62.
       78  winiusersid                        value          63.
       78  winbuiltincryptooperatorssid       value          64.
       78  winuntrustedlabelsid               value          65.
       78  winlowlabelsid                     value          66.
       78  winmediumlabelsid                  value          67.
       78  winhighlabelsid                    value          68.
       78  winsystemlabelsid                  value          69.
       78  winwriterestrictedcodesid          value          70.
       78  wincreatorownerrightssid           value          71.
       78  wincacheableprincipalsgroupsid     value          72.
       78  winnoncacheableprincipalsgroup     value          73.
       78  winenterprisereadonlycontrolle     value          74.
       78  winaccountreadonlycontrollerss     value          75.
       78  winbuiltineventlogreadersgroup     value          76.
       78  winnewenterprisereadonlycontro     value          77.
       78  winbuiltincertsvcdcomaccessgro     value          78.
       78  winmediumpluslabelsid              value          79.
       78  winlocallogonsid                   value          80.
       78  winconsolelogonsid                 value          81.
       78  winthisorganizationcertificate     value          82.
       78  winapplicationpackageauthority     value          83.
       78  winbuiltinanypackagesid            value          84.
       78  wincapabilityinternetclientsid     value          85.
       78  wincapabilityinternetclientser     value          86.
       78  wincapabilityprivatenetworkcli     value          87.
       78  wincapabilitypictureslibrarysi     value          88.
       78  wincapabilityvideoslibrarysid      value          89.
       78  wincapabilitymusiclibrarysid       value          90.
       78  wincapabilitydocumentslibrarys     value          91.
       78  wincapabilitysharedusercertifi     value          92.
       78  wincapabilityenterpriseauthent     value          93.
       78  wincapabilityremovablestorages     value          94.
       78  winbuiltinrdsremoteaccessserve     value          95.
       78  winbuiltinrdsendpointserverssi     value          96.
       78  winbuiltinrdsmanagementservers     value          97.
       78  winusermodedriverssid              value          98.
       78  winbuiltinhypervadminssid          value          99.
       78  winaccountcloneablecontrollers     value         100.
       78  winbuiltinaccesscontrolassista     value         101.
       78  winbuiltinremotemanagementuser     value         102.
       78  winauthenticationauthorityasse     value         103.
       78  winauthenticationserviceassert     value         104.
       78  winlocalaccountsid                 value         105.
       78  winlocalaccountandadministrato     value         106.
       78  winaccountprotecteduserssid        value         107.
       78  wincapabilityappointmentssid       value         108.
       78  wincapabilitycontactssid           value         109.
       78  winaccountdefaultsystemmanaged     value         110.
       78  winbuiltindefaultsystemmanaged     value         111.
       78  winbuiltinstoragereplicaadmins     value         112.
       78  winaccountkeyadminssid             value         113.
       78  winaccountenterprisekeyadminss     value         114.
       78  winauthenticationkeytrustsid       value         115.
       78  winauthenticationkeypropertymf     value         116.
       78  winauthenticationkeypropertyat     value         117.
       78  winauthenticationfreshkeyauths     value         118.
       78  winbuiltindeviceownerssid          value         119.
       78  win-ex                             value         120.


       01  1-ACL             is typedef.
        02 aclrevision       usage uns-char.
        02 sbz1              usage uns-char.
        02 aclsize           usage uns-short.
        02 acecount          usage uns-short.
        02 sbz2              usage uns-short.

       01  ACL               is typedef       usage 1-acl.
       01  PACL              is typedef       usage data-pointer.
       01  1-ACE-HEADER      is typedef.
        02 acetype           usage uns-char.
        02 aceflags          usage uns-char.
        02 acesize           usage uns-short.

       01  ACE-HEADER        is typedef       usage 1-ace-header.
       01  PACE-HEADER       is typedef       usage data-pointer.
       01  1-ACCESS-ALLOWED-ACE               is typedef.
        02 header            usage ace-header.
        02 filler            pic x(4).
        02 mask              usage uns-long.
        02 sidstart          usage uns-long.

       01  ACCESS-ALLOWED-ACE                 is typedef
                             usage
           1-access-allowed-ace.
       01  PACCESS-ALLOWED-ACE                is typedef
                             usage data-pointer.
       01  1-ACCESS-DENIED-ACE                is typedef.
        02 header            usage ace-header.
        02 filler            pic x(4).
        02 mask              usage uns-long.
        02 sidstart          usage uns-long.

       01  ACCESS-DENIED-ACE is typedef       usage
           1-access-denied-ace.
       01  PACCESS-DENIED-ACE                 is typedef
                             usage data-pointer.
       01  1-SYSTEM-AUDIT-ACE                 is typedef.
        02 header            usage ace-header.
        02 filler            pic x(4).
        02 mask              usage uns-long.
        02 sidstart          usage uns-long.

       01  SYSTEM-AUDIT-ACE  is typedef       usage 1-system-audit-ace.
       01  PSYSTEM-AUDIT-ACE is typedef       usage data-pointer.
       01  1-SYSTEM-ALARM-ACE                 is typedef.
        02 header            usage ace-header.
        02 filler            pic x(4).
        02 mask              usage uns-long.
        02 sidstart          usage uns-long.

       01  SYSTEM-ALARM-ACE  is typedef       usage 1-system-alarm-ace.
       01  PSYSTEM-ALARM-ACE is typedef       usage data-pointer.
       01  1-SYSTEM-RESOURCE-ATTRIBUTE-AC     is typedef.
        02 header            usage ace-header.
        02 filler            pic x(4).
        02 mask              usage uns-long.
        02 sidstart          usage uns-long.

       01  SYSTEM-RESOURCE-ATTRIBUTE-ACE      is typedef
                             usage
           1-system-resource-attribute-ac.
       01  PSYSTEM-RESOURCE-ATTRIBUTE-ACE     is typedef
                             usage data-pointer.
       01  1-SYSTEM-SCOPED-POLICY-ID-ACE      is typedef.
        02 header            usage ace-header.
        02 filler            pic x(4).
        02 mask              usage uns-long.
        02 sidstart          usage uns-long.

       01  SYSTEM-SCOPED-POLICY-ID-ACE        is typedef
                             usage
           1-system-scoped-policy-id-ace.
       01  PSYSTEM-SCOPED-POLICY-ID-ACE       is typedef
                             usage data-pointer.
       01  1-SYSTEM-MANDATORY-LABEL-ACE       is typedef.
        02 header            usage ace-header.
        02 filler            pic x(4).
        02 mask              usage uns-long.
        02 sidstart          usage uns-long.

       01  SYSTEM-MANDATORY-LABEL-ACE         is typedef
                             usage
           1-system-mandatory-label-ace.
       01  PSYSTEM-MANDATORY-LABEL-ACE        is typedef
                             usage data-pointer.
       01  1-SYSTEM-PROCESS-TRUST-LABEL-A     is typedef.
        02 header            usage ace-header.
        02 filler            pic x(4).
        02 mask              usage uns-long.
        02 sidstart          usage uns-long.

       01  SYSTEM-PROCESS-TRUST-LABEL-ACE     is typedef
                             usage
           1-system-process-trust-label-a.
       01  PSYSTEM-PROCESS-TRUST-LABEL-AC     is typedef
                             usage data-pointer.
       01  1-SYSTEM-ACCESS-FILTER-ACE         is typedef.
        02 header            usage ace-header.
        02 filler            pic x(4).
        02 mask              usage uns-long.
        02 sidstart          usage uns-long.

       01  SYSTEM-ACCESS-FILTER-ACE           is typedef
                             usage
           1-system-access-filter-ace.
       01  PSYSTEM-ACCESS-FILTER-ACE          is typedef
                             usage data-pointer.
       01  1-ACCESS-ALLOWED-OBJECT-ACE        is typedef.
        02 header            usage ace-header.
        02 filler            pic x(4).
        02 mask              usage uns-long.
        02 flags             usage uns-long.
        02 objecttype        usage guid.
        02 inheritedobjecttype                usage guid.
        02 sidstart          usage uns-long.

       01  ACCESS-ALLOWED-OBJECT-ACE          is typedef
                             usage
           1-access-allowed-object-ace.
       01  PACCESS-ALLOWED-OBJECT-ACE         is typedef
                             usage data-pointer.
       01  1-ACCESS-DENIED-OBJECT-ACE         is typedef.
        02 header            usage ace-header.
        02 filler            pic x(4).
        02 mask              usage uns-long.
        02 flags             usage uns-long.
        02 objecttype        usage guid.
        02 inheritedobjecttype                usage guid.
        02 sidstart          usage uns-long.

       01  ACCESS-DENIED-OBJECT-ACE           is typedef
                             usage
           1-access-denied-object-ace.
       01  PACCESS-DENIED-OBJECT-ACE          is typedef
                             usage data-pointer.
       01  1-SYSTEM-AUDIT-OBJECT-ACE          is typedef.
        02 header            usage ace-header.
        02 filler            pic x(4).
        02 mask              usage uns-long.
        02 flags             usage uns-long.
        02 objecttype        usage guid.
        02 inheritedobjecttype                usage guid.
        02 sidstart          usage uns-long.

       01  SYSTEM-AUDIT-OBJECT-ACE            is typedef
                             usage
           1-system-audit-object-ace.
       01  PSYSTEM-AUDIT-OBJECT-ACE           is typedef
                             usage data-pointer.
       01  1-SYSTEM-ALARM-OBJECT-ACE          is typedef.
        02 header            usage ace-header.
        02 filler            pic x(4).
        02 mask              usage uns-long.
        02 flags             usage uns-long.
        02 objecttype        usage guid.
        02 inheritedobjecttype                usage guid.
        02 sidstart          usage uns-long.

       01  SYSTEM-ALARM-OBJECT-ACE            is typedef
                             usage
           1-system-alarm-object-ace.
       01  PSYSTEM-ALARM-OBJECT-ACE           is typedef
                             usage data-pointer.
       01  1-ACCESS-ALLOWED-CALLBACK-ACE      is typedef.
        02 header            usage ace-header.
        02 filler            pic x(4).
        02 mask              usage uns-long.
        02 sidstart          usage uns-long.

       01  ACCESS-ALLOWED-CALLBACK-ACE        is typedef
                             usage
           1-access-allowed-callback-ace.
       01  PACCESS-ALLOWED-CALLBACK-ACE       is typedef
                             usage data-pointer.
       01  1-ACCESS-DENIED-CALLBACK-ACE       is typedef.
        02 header            usage ace-header.
        02 filler            pic x(4).
        02 mask              usage uns-long.
        02 sidstart          usage uns-long.

       01  ACCESS-DENIED-CALLBACK-ACE         is typedef
                             usage
           1-access-denied-callback-ace.
       01  PACCESS-DENIED-CALLBACK-ACE        is typedef
                             usage data-pointer.
       01  1-SYSTEM-AUDIT-CALLBACK-ACE        is typedef.
        02 header            usage ace-header.
        02 filler            pic x(4).
        02 mask              usage uns-long.
        02 sidstart          usage uns-long.

       01  SYSTEM-AUDIT-CALLBACK-ACE          is typedef
                             usage
           1-system-audit-callback-ace.
       01  PSYSTEM-AUDIT-CALLBACK-ACE         is typedef
                             usage data-pointer.
       01  1-SYSTEM-ALARM-CALLBACK-ACE        is typedef.
        02 header            usage ace-header.
        02 filler            pic x(4).
        02 mask              usage uns-long.
        02 sidstart          usage uns-long.

       01  SYSTEM-ALARM-CALLBACK-ACE          is typedef
                             usage
           1-system-alarm-callback-ace.
       01  PSYSTEM-ALARM-CALLBACK-ACE         is typedef
                             usage data-pointer.
       01  1-ACCESS-ALLOWED-CALLBACK-OBJE     is typedef.
        02 header            usage ace-header.
        02 filler            pic x(4).
        02 mask              usage uns-long.
        02 flags             usage uns-long.
        02 objecttype        usage guid.
        02 inheritedobjecttype                usage guid.
        02 sidstart          usage uns-long.

       01  ACCESS-ALLOWED-CALLBACK-OBJECT     is typedef
                             usage
           1-access-allowed-callback-obje.
       01  PACCESS-ALLOWED-CALLBACK-OBJEC     is typedef
                             usage data-pointer.
       01  1-ACCESS-DENIED-CALLBACK-OBJEC     is typedef.
        02 header            usage ace-header.
        02 filler            pic x(4).
        02 mask              usage uns-long.
        02 flags             usage uns-long.
        02 objecttype        usage guid.
        02 inheritedobjecttype                usage guid.
        02 sidstart          usage uns-long.

       01  ACCESS-DENIED-CALLBACK-OBJECT      is typedef
                             usage
           1-access-denied-callback-objec.
       01  PACCESS-DENIED-CALLBACK-OBJECT     is typedef
                             usage data-pointer.
       01  1-SYSTEM-AUDIT-CALLBACK-OBJECT     is typedef.
        02 header            usage ace-header.
        02 filler            pic x(4).
        02 mask              usage uns-long.
        02 flags             usage uns-long.
        02 objecttype        usage guid.
        02 inheritedobjecttype                usage guid.
        02 sidstart          usage uns-long.

       01  SYSTEM-AUDIT-CALLBACK-OBJECT-A     is typedef
                             usage
           1-system-audit-callback-object.
       01  PSYSTEM-AUDIT-CALLBACK-OBJECT      is typedef
                             usage data-pointer.
       01  1-SYSTEM-ALARM-CALLBACK-OBJECT     is typedef.
        02 header            usage ace-header.
        02 filler            pic x(4).
        02 mask              usage uns-long.
        02 flags             usage uns-long.
        02 objecttype        usage guid.
        02 inheritedobjecttype                usage guid.
        02 sidstart          usage uns-long.

       01  SYSTEM-ALARM-CALLBACK-OBJECT-A     is typedef
                             usage
           1-system-alarm-callback-object.
       01  PSYSTEM-ALARM-CALLBACK-OBJECT      is typedef
                             usage data-pointer.
       01  1-ACL-INFORMATION-CLASS            is typedef usage uns-int.
       78  aclrevisioninformation             value           1.
       78  aclsizeinformation                 value           2.

       01  ACL-INFORMATION-CLASS              is typedef
                             usage
           1-acl-information-class.
       01  1-ACL-REVISION-INFORMATION         is typedef.
        02 aclrevision       usage uns-long.

       01  ACL-REVISION-INFORMATION           is typedef
                             usage
           1-acl-revision-information.
       01  PACL-REVISION-INFORMATION          is typedef
                             usage data-pointer.
       01  1-ACL-SIZE-INFORMATION             is typedef.
        02 acecount          usage uns-long.
        02 aclbytesinuse     usage uns-long.
        02 aclbytesfree      usage uns-long.

       01  ACL-SIZE-INFORMATION               is typedef
                             usage
           1-acl-size-information.
       01  PACL-SIZE-INFORMATION              is typedef
                             usage data-pointer.
       01  SECURITY-DESCRIPTOR-CONTROL        is typedef
                             usage uns-short.
       01  PSECURITY-DESCRIPTOR-CONTROL       is typedef
                             usage data-pointer.
       01  1-SECURITY-DESCRIPTOR-RELATIVE     is typedef.
        02 revision          usage uns-char.
        02 sbz1              usage uns-char.
        02 1control          usage uns-short.
        02 filler            pic x(4).
        02 owner             usage uns-long.
        02 1group            usage uns-long.
        02 sacl              usage uns-long.
        02 dacl              usage uns-long.

       01  SECURITY-DESCRIPTOR-RELATIVE       is typedef
                             usage
           1-security-descriptor-relative.
       01  PISECURITY-DESCRIPTOR-RELATIVE     is typedef
                             usage data-pointer.
       01  1-SECURITY-DESCRIPTOR              is typedef.
        02 revision          usage uns-char.
        02 sbz1              usage uns-char.
        02 1control          usage uns-short.
        02 filler            pic x(4).
        02 owner             usage data-pointer.
        02 1group            usage data-pointer.
        02 sacl              usage data-pointer.
        02 dacl              usage data-pointer.

       01  SECURITY-DESCRIPTOR                is typedef
                             usage
           1-security-descriptor.
       01  PISECURITY-DESCRIPTOR              is typedef
                             usage data-pointer.
       01  1-SECURITY-OBJECT-AI-PARAMS        is typedef.
        02 1size             usage uns-long.
        02 constraintmask    usage uns-long.

       01  SECURITY-OBJECT-AI-PARAMS          is typedef
                             usage
           1-security-object-ai-params.
       01  PSECURITY-OBJECT-AI-PARAMS         is typedef
                             usage data-pointer.
       01  1-OBJECT-TYPE-LIST                 is typedef.
        02 level             usage uns-short.
        02 sbz               usage uns-short.
        02 filler            pic x(4).
        02 objecttype        usage data-pointer.

       01  OBJECT-TYPE-LIST  is typedef       usage 1-object-type-list.
       01  POBJECT-TYPE-LIST is typedef       usage data-pointer.
       01  1-AUDIT-EVENT-TYPE                 is typedef usage uns-int.
       78  auditeventobjectaccess             value           0.
       78  auditeventdirectoryserviceacce     value           1.

       01  AUDIT-EVENT-TYPE  is typedef       usage 1-audit-event-type.
       01  PAUDIT-EVENT-TYPE is typedef       usage data-pointer.
       01  1-PRIVILEGE-SET   is typedef.
        02 privilegecount    usage uns-long.
        02 1control          usage uns-long.
        02 privilege occurs 1                 usage
           luid-and-attributes.

       01  PRIVILEGE-SET     is typedef       usage 1-privilege-set.
       01  PPRIVILEGE-SET    is typedef       usage data-pointer.
       01  1-ACCESS-REASON-TYPE               is typedef usage uns-int.
       78  accessreasonnone                   value           0.
       78  accessreasonallowedace             value       65536.
       78  accessreasondeniedace              value      131072.
       78  accessreasonallowedparentace       value      196608.
       78  accessreasondeniedparentace        value      262144.
       78  accessreasonnotgrantedbycape       value      327680.
       78  accessreasonnotgrantedbyparent     value      393216.
       78  accessreasonnotgrantedtoappcon     value      458752.
       78  accessreasonmissingprivilege       value     1048576.
       78  accessreasonfromprivilege          value     2097152.
       78  accessreasonintegritylevel         value     3145728.
       78  accessreasonownership              value     4194304.
       78  accessreasonnulldacl               value     5242880.
       78  accessreasonemptydacl              value     6291456.
       78  accessreasonnosd                   value     7340032.
       78  accessreasonnogrant                value     8388608.
       78  accessreasontrustlabel             value     9437184.
       78  accessreasonfilterace              value    10485760.

       01  ACCESS-REASON-TYPE                 is typedef
                             usage
           1-access-reason-type.
       01  ACCESS-REASON     is typedef       usage uns-long.
       01  1-ACCESS-REASONS  is typedef.
        02 1data occurs 32   usage uns-long.

       01  ACCESS-REASONS    is typedef       usage 1-access-reasons.
       01  PACCESS-REASONS   is typedef       usage data-pointer.
       01  1-SE-SECURITY-DESCRIPTOR           is typedef.
        02 1size             usage uns-long.
        02 flags             usage uns-long.
        02 securitydescriptor                 usage data-pointer.

       01  SE-SECURITY-DESCRIPTOR             is typedef
                             usage
           1-se-security-descriptor.
       01  PSE-SECURITY-DESCRIPTOR            is typedef
                             usage data-pointer.
       01  1-SE-ACCESS-REQUEST                is typedef.
        02 1size             usage uns-long.
        02 sesecuritydescriptor               usage data-pointer.
        02 desiredaccess     usage uns-long.
        02 previouslygrantedaccess            usage uns-long.
        02 principalselfsid  usage data-pointer.
        02 genericmapping    usage data-pointer.
        02 objecttypelistcount                usage uns-long.
        02 objecttypelist    usage data-pointer.

       01  SE-ACCESS-REQUEST is typedef       usage
           1-se-access-request.
       01  PSE-ACCESS-REQUEST                 is typedef
                             usage data-pointer.
       01  1-SE-ACCESS-REPLY is typedef.
        02 1size             usage uns-long.
        02 resultlistcount   usage uns-long.
        02 grantedaccess     usage data-pointer.
        02 accessstatus      usage data-pointer.
        02 accessreason      usage data-pointer.
        02 privileges        usage data-pointer.

       01  SE-ACCESS-REPLY   is typedef       usage 1-se-access-reply.
       01  PSE-ACCESS-REPLY  is typedef       usage data-pointer.
       01  1-SECURITY-IMPERSONATION-LEVEL     is typedef usage uns-int.
       78  securityanonymous                  value           0.
       78  securityidentification             value           1.
       78  securityimpersonation              value           2.
       78  securitydelegation                 value           3.

       01  SECURITY-IMPERSONATION-LEVEL       is typedef
                             usage
           1-security-impersonation-level.
       01  PSECURITY-IMPERSONATION-LEVEL      is typedef
                             usage data-pointer.
       01  1-TOKEN-TYPE      is typedef usage uns-int.
       78  tokenprimary                       value           1.
       78  tokenimpersonation                 value           2.

       01  TOKEN-TYPE        is typedef       usage 1-token-type.
       01  PTOKEN-TYPE       is typedef       usage data-pointer.
       01  1-TOKEN-ELEVATION-TYPE             is typedef usage uns-int.
       78  tokenelevationtypedefault          value           1.
       78  tokenelevationtypefull             value           2.
       78  tokenelevationtypelimited          value           3.
       78  token-1                            value           4.


       01  1-TOKEN-INFORMATION-CLASS          is typedef usage uns-int.
       78  tokenuser                          value           1.
       78  tokengroups                        value           2.
       78  tokenprivileges                    value           3.
       78  tokenowner                         value           4.
       78  tokenprimarygroup                  value           5.
       78  tokendefaultdacl                   value           6.
       78  tokensource                        value           7.
       78  tokentype                          value           8.
       78  tokenimpersonationlevel            value           9.
       78  tokenstatistics                    value          10.
       78  tokenrestrictedsids                value          11.
       78  tokensessionid                     value          12.
       78  tokengroupsandprivileges           value          13.
       78  tokensessionreference              value          14.
       78  tokensandboxinert                  value          15.
       78  tokenauditpolicy                   value          16.
       78  tokenorigin                        value          17.
       78  tokenelevationtype                 value          18.
       78  tokenlinkedtoken                   value          19.
       78  tokenelevation                     value          20.
       78  tokenhasrestrictions               value          21.
       78  tokenaccessinformation             value          22.
       78  tokenvirtualizationallowed         value          23.
       78  tokenvirtualizationenabled         value          24.
       78  tokenintegritylevel                value          25.
       78  tokenuiaccess                      value          26.
       78  tokenmandatorypolicy               value          27.
       78  tokenlogonsid                      value          28.
       78  tokenisappcontainer                value          29.
       78  tokencapabilities                  value          30.
       78  tokenappcontainersid               value          31.
       78  tokenappcontainernumber            value          32.
       78  tokenuserclaimattributes           value          33.
       78  tokendeviceclaimattributes         value          34.
       78  tokenrestricteduserclaimattrib     value          35.
       78  tokenrestricteddeviceclaimattr     value          36.
       78  tokendevicegroups                  value          37.
       78  tokenrestricteddevicegroups        value          38.
       78  tokensecurityattributes            value          39.
       78  tokenisrestricted                  value          40.
       78  tokenprocesstrustlevel             value          41.
       78  tokenprivatenamespace              value          42.
       78  tokensingletonattributes           value          43.
       78  tokenbnoisolation                  value          44.
       78  tokenchildprocessflags             value          45.
       78  tokenislessprivilegedappcontai     value          46.
       78  tokenissandboxed                   value          47.
       78  maxtokeninfoclass                  value          48.

       01  TOKEN-INFORMATION-CLASS            is typedef
                             usage
           1-token-information-class.
       01  PTOKEN-INFORMATION-CLASS           is typedef
                             usage data-pointer.
       01  1-TOKEN-USER      is typedef.
        02 1user             usage sid-and-attributes.

       01  TOKEN-USER        is typedef       usage 1-token-user.
       01  PTOKEN-USER       is typedef       usage data-pointer.
       01  1-SE-TOKEN-USER   is typedef.
        02 filler.
         03  1filler.
          04 1tokenuser      usage token-user.
         03  filler redefines 1filler.
          04 1user           usage sid-and-attributes.
        02 filler.
         03  2filler.
          04 1sid            usage sid.
          04 filler          pic x(112).
         03  filler redefines 2filler.
          04 buffer occurs 128                usage uns-char.

       01  SE-TOKEN-USER     is typedef       usage 1-se-token-user.
       01  PSE-TOKEN-USER    is typedef       usage 1-se-token-user.
       01  1-TOKEN-GROUPS    is typedef.
        02 groupcount        usage uns-long.
        02 groups occurs 1   usage sid-and-attributes.

       01  TOKEN-GROUPS      is typedef       usage 1-token-groups.
       01  PTOKEN-GROUPS     is typedef       usage data-pointer.
       01  1-TOKEN-PRIVILEGES                 is typedef.
        02 privilegecount    usage uns-long.
        02 privileges occurs 1                usage
           luid-and-attributes.

       01  TOKEN-PRIVILEGES  is typedef       usage 1-token-privileges.
       01  PTOKEN-PRIVILEGES is typedef       usage data-pointer.
       01  1-TOKEN-OWNER     is typedef.
        02 owner             usage data-pointer.

       01  TOKEN-OWNER       is typedef       usage 1-token-owner.
       01  PTOKEN-OWNER      is typedef       usage data-pointer.
       01  1-TOKEN-PRIMARY-GROUP              is typedef.
        02 primarygroup      usage data-pointer.

       01  TOKEN-PRIMARY-GROUP                is typedef
                             usage
           1-token-primary-group.
       01  PTOKEN-PRIMARY-GROUP               is typedef
                             usage data-pointer.
       01  1-TOKEN-DEFAULT-DACL               is typedef.
        02 defaultdacl       usage data-pointer.

       01  TOKEN-DEFAULT-DACL                 is typedef
                             usage
           1-token-default-dacl.
       01  PTOKEN-DEFAULT-DACL                is typedef
                             usage data-pointer.
       01  1-TOKEN-USER-CLAIMS                is typedef.
        02 userclaims        usage data-pointer.

       01  TOKEN-USER-CLAIMS is typedef       usage
           1-token-user-claims.
       01  PTOKEN-USER-CLAIMS                 is typedef
                             usage data-pointer.
       01  1-TOKEN-DEVICE-CLAIMS              is typedef.
        02 deviceclaims      usage data-pointer.

       01  TOKEN-DEVICE-CLAIMS                is typedef
                             usage
           1-token-device-claims.
       01  PTOKEN-DEVICE-CLAIMS               is typedef
                             usage data-pointer.
       01  1-TOKEN-GROUPS-AND-PRIVILEGES      is typedef.
        02 sidcount          usage uns-long.
        02 sidlength         usage uns-long.
        02 sids              usage data-pointer.
        02 restrictedsidcount                 usage uns-long.
        02 restrictedsidlength                usage uns-long.
        02 restrictedsids    usage data-pointer.
        02 privilegecount    usage uns-long.
        02 privilegelength   usage uns-long.
        02 privileges        usage data-pointer.
        02 authenticationid  usage luid.

       01  TOKEN-GROUPS-AND-PRIVILEGES        is typedef
                             usage
           1-token-groups-and-privileges.
       01  PTOKEN-GROUPS-AND-PRIVILEGES       is typedef
                             usage data-pointer.
       01  1-TOKEN-LINKED-TOKEN               is typedef.
        02 linkedtoken       usage data-pointer.

       01  TOKEN-LINKED-TOKEN                 is typedef
                             usage
           1-token-linked-token.
       01  PTOKEN-LINKED-TOKEN                is typedef
                             usage data-pointer.
       01  1-TOKEN-ELEVATION is typedef.
        02 tokeniselevated   usage uns-long.

       01  TOKEN-ELEVATION   is typedef       usage 1-token-elevation.
       01  PTOKEN-ELEVATION  is typedef       usage data-pointer.
       01  1-TOKEN-MANDATORY-LABEL            is typedef.
        02 1label            usage sid-and-attributes.

       01  TOKEN-MANDATORY-LABEL              is typedef
                             usage
           1-token-mandatory-label.
       01  PTOKEN-MANDATORY-LABEL             is typedef
                             usage data-pointer.
       01  1-TOKEN-MANDATORY-POLICY           is typedef.
        02 policy            usage uns-long.

       01  TOKEN-MANDATORY-POLICY             is typedef
                             usage
           1-token-mandatory-policy.
       01  PTOKEN-MANDATORY-POLICY            is typedef
                             usage data-pointer.
       01  PSECURITY-ATTRIBUTES-OPAQUE        is typedef
                             usage data-pointer.
       01  1-TOKEN-ACCESS-INFORMATION         is typedef.
        02 sidhash           usage data-pointer.
        02 restrictedsidhash usage data-pointer.
        02 privileges        usage data-pointer.
        02 authenticationid  usage luid.
        02 1tokentype        usage token-type.
        02 impersonationlevel                 usage
           security-impersonation-level.
        02 mandatorypolicy   usage
           token-mandatory-policy.
        02 flags             usage uns-long.
        02 appcontainernumber                 usage uns-long.
        02 packagesid        usage data-pointer.
        02 capabilitieshash  usage data-pointer.
        02 trustlevelsid     usage data-pointer.
        02 securityattributes                 usage data-pointer.

       01  TOKEN-ACCESS-INFORMATION           is typedef
                             usage
           1-token-access-information.
       01  PTOKEN-ACCESS-INFORMATION          is typedef
                             usage data-pointer.
       01  1-TOKEN-AUDIT-POLICY               is typedef.
        02 peruserpolicy occurs 60            usage uns-char.

       01  TOKEN-AUDIT-POLICY                 is typedef
                             usage
           1-token-audit-policy.
       01  PTOKEN-AUDIT-POLICY                is typedef
                             usage data-pointer.
       01  1-TOKEN-SOURCE    is typedef.
        02 sourcename        pic x(8).
        02 sourceidentifier  usage luid.

       01  TOKEN-SOURCE      is typedef       usage 1-token-source.
       01  PTOKEN-SOURCE     is typedef       usage data-pointer.
       01  1-TOKEN-STATISTICS                 is typedef.
        02 tokenid           usage luid.
        02 authenticationid  usage luid.
        02 expirationtime    usage large-integer.
        02 1tokentype        usage token-type.
        02 impersonationlevel                 usage
           security-impersonation-level.
        02 dynamiccharged    usage uns-long.
        02 dynamicavailable  usage uns-long.
        02 groupcount        usage uns-long.
        02 privilegecount    usage uns-long.
        02 modifiedid        usage luid.

       01  TOKEN-STATISTICS  is typedef       usage 1-token-statistics.
       01  PTOKEN-STATISTICS is typedef       usage data-pointer.
       01  1-TOKEN-CONTROL   is typedef.
        02 tokenid           usage luid.
        02 authenticationid  usage luid.
        02 modifiedid        usage luid.
        02 1tokensource      usage token-source.

       01  TOKEN-CONTROL     is typedef       usage 1-token-control.
       01  PTOKEN-CONTROL    is typedef       usage data-pointer.
       01  1-TOKEN-ORIGIN    is typedef.
        02 originatinglogonsession            usage luid.

       01  TOKEN-ORIGIN      is typedef       usage 1-token-origin.
       01  PTOKEN-ORIGIN     is typedef       usage data-pointer.
       01  1-MANDATORY-LEVEL is typedef usage uns-int.
       78  mandatoryleveluntrusted            value           0.
       78  mandatorylevellow                  value           1.
       78  mandatorylevelmedium               value           2.
       78  mandatorylevelhigh                 value           3.
       78  mandatorylevelsystem               value           4.
       78  mandatorylevelsecureprocess        value           5.
       78  mandatorylevelcount                value           6.

       01  MANDATORY-LEVEL   is typedef       usage 1-mandatory-level.
       01  PMANDATORY-LEVEL  is typedef       usage data-pointer.
       01  1-TOKEN-APPCONTAINER-INFORMATI     is typedef.
        02 tokenappcontainer usage data-pointer.

       01  TOKEN-APPCONTAINER-INFORMATION     is typedef
                             usage
           1-token-appcontainer-informati.
       01  PTOKEN-APPCONTAINER-INFORMATIO     is typedef
                             usage data-pointer.
       01  1-TOKEN-SID-INFORMATION            is typedef.
        02 1sid              usage data-pointer.

       01  TOKEN-SID-INFORMATION              is typedef
                             usage
           1-token-sid-information.
       01  PTOKEN-SID-INFORMATION             is typedef
                             usage data-pointer.
       01  1-TOKEN-BNO-ISOLATION-INFORMAT     is typedef.
        02 isolationprefix   usage data-pointer.
        02 isolationenabled  usage uns-char.

       01  TOKEN-BNO-ISOLATION-INFORMATIO     is typedef
                             usage
           1-token-bno-isolation-informat.
       01  PTOKEN-BNO-ISOLATION-INFORMATI     is typedef
                             usage data-pointer.
       01  1-CLAIM-SECURITY-ATTRIBUTE-FQB     is typedef.
        02 version           usage uns-l-long.
        02 1name             usage data-pointer.

       01  CLAIM-SECURITY-ATTRIBUTE-FQBN      is typedef
                             usage
           1-claim-security-attribute-fqb.
       01  PCLAIM-SECURITY-ATTRIBUTE-FQBN     is typedef
                             usage data-pointer.
       01  1-CLAIM-SECURITY-ATTRIBUTE-OCT     is typedef.
        02 pvalue            usage data-pointer.
        02 valuelength       usage uns-long.

       01  CLAIM-SECURITY-ATTRIBUTE-OCTET     is typedef
                             usage
           1-claim-security-attribute-oct.
       01  PCLAIM-SECURITY-ATTRIBUTE-OCTE     is typedef
                             usage data-pointer.
       01  1-CLAIM-SECURITY-ATTRIBUTE-V1      is typedef.
        02 1name             usage data-pointer.
        02 1valuetype        usage uns-short.
        02 reserved          usage uns-short.
        02 filler            pic x(4).
        02 flags             usage uns-long.
        02 valuecount        usage uns-long.
        02 1values.
         03  1values.
          04 1pint64         usage data-pointer.
         03  filler redefines 1values.
          04 1puint64        usage data-pointer.
         03  filler redefines 1values.
          04 ppstring        usage data-pointer.
         03  filler redefines 1values.
          04 pfqbn           usage data-pointer.
         03  filler redefines 1values.
          04 poctetstring    usage data-pointer.

       01  CLAIM-SECURITY-ATTRIBUTE-V1        is typedef
                             usage
           1-claim-security-attribute-v1.
       01  PCLAIM-SECURITY-ATTRIBUTE-V1       is typedef
                             usage data-pointer.
       01  1-CLAIM-SECURITY-ATTRIBUTE-REL     is typedef.
        02 1name             usage uns-long.
        02 1valuetype        usage uns-short.
        02 reserved          usage uns-short.
        02 filler            pic x(4).
        02 flags             usage uns-long.
        02 valuecount        usage uns-long.
        02 1values.
         03  1values.
          04 1pint64 occurs 1                 usage uns-long.
         03  filler redefines 1values.
          04 1puint64 occurs 1                usage uns-long.
         03  filler redefines 1values.
          04 ppstring occurs 1                usage uns-long.
         03  filler redefines 1values.
          04 pfqbn occurs 1  usage uns-long.
         03  filler redefines 1values.
          04 poctetstring occurs 1            usage uns-long.

       01  CLAIM-SECURITY-ATTRIBUTE-RELAT     is typedef
                             usage
           1-claim-security-attribute-rel.
       01  PCLAIM-SECURITY-ATTRIBUTE-RELA     is typedef
                             usage data-pointer.
       01  1-CLAIM-SECURITY-ATTRIBUTES-IN     is typedef.
        02 version           usage uns-short.
        02 reserved          usage uns-short.
        02 filler            pic x(4).
        02 attributecount    usage uns-long.
        02 1attribute.
         03  1attribute.
          04 pattributev1    usage data-pointer.

       01  CLAIM-SECURITY-ATTRIBUTES-INFO     is typedef
                             usage
           1-claim-security-attributes-in.
       01  PCLAIM-SECURITY-ATTRIBUTES-INF     is typedef
                             usage data-pointer.
       01  SECURITY-CONTEXT-TRACKING-MODE     is typedef
                             usage uns-char.
       01  PSECURITY-CONTEXT-TRACKING-MOD     is typedef
                             usage data-pointer.
       01  1-SECURITY-QUALITY-OF-SERVICE      is typedef.
        02 1length           usage uns-long.
        02 impersonationlevel                 usage
           security-impersonation-level.
        02 contexttrackingmode                usage uns-char.
        02 effectiveonly     usage uns-char.

       01  SECURITY-QUALITY-OF-SERVICE        is typedef
                             usage
           1-security-quality-of-service.
       01  PSECURITY-QUALITY-OF-SERVICE       is typedef
                             usage data-pointer.
       01  1-SE-IMPERSONATION-STATE           is typedef.
        02 token             usage data-pointer.
        02 copyonopen        usage uns-char.
        02 effectiveonly     usage uns-char.
        02 filler            pic x(2).
        02 level             usage
           security-impersonation-level.

       01  SE-IMPERSONATION-STATE             is typedef
                             usage
           1-se-impersonation-state.
       01  PSE-IMPERSONATION-STATE            is typedef
                             usage data-pointer.
       01  SECURITY-INFORMATION               is typedef
                             usage uns-long.
       01  PSECURITY-INFORMATION              is typedef
                             usage data-pointer.
       01  SE-SIGNING-LEVEL  is typedef       usage uns-char.
       01  PSE-SIGNING-LEVEL is typedef       usage data-pointer.
       01  1-SE-IMAGE-SIGNATURE-TYPE          is typedef usage uns-int.
       78  seimagesignaturenone               value           0.
       78  seimagesignatureembedded           value           1.
       78  seimagesignaturecache              value           2.
       78  seimagesignaturecatalogcached      value           3.
       78  seimagesignaturecatalognotcach     value           4.
       78  seimagesignaturecataloghint        value           5.
       78  seimagesignaturepackagecatalog     value           6.
       78  seimagesignaturepplmitigated       value           7.

       01  SE-IMAGE-SIGNATURE-TYPE            is typedef
                             usage
           1-se-image-signature-type.
       01  PSE-IMAGE-SIGNATURE-TYPE           is typedef
                             usage data-pointer.
       01  1-SE-LEARNING-MODE-DATA-TYPE       is typedef usage uns-int.
       78  selearningmodeinvalidtype          value           0.
       78  selearningmodesettings             value           1.
       78  selearningmodemax                  value           2.

       01  SE-LEARNING-MODE-DATA-TYPE         is typedef
                             usage
           1-se-learning-mode-data-type.
       01  1-SECURITY-CAPABILITIES            is typedef.
        02 appcontainersid   usage data-pointer.
        02 capabilities      usage data-pointer.
        02 capabilitycount   usage uns-long.
        02 reserved          usage uns-long.

       01  SECURITY-CAPABILITIES              is typedef
                             usage
           1-security-capabilities.
       01  PSECURITY-CAPABILITIES             is typedef
                             usage data-pointer.
       01  LPSECURITY-CAPABILITIES            is typedef
                             usage data-pointer.
       01  1-JOB-SET-ARRAY   is typedef.
        02 jobhandle         usage data-pointer.
        02 memberlevel       usage uns-long.
        02 flags             usage uns-long.

       01  JOB-SET-ARRAY     is typedef       usage 1-job-set-array.
       01  PJOB-SET-ARRAY    is typedef       usage data-pointer.

       01  1-EXCEPTION-REGISTRATION-RECOR     is typedef.
        02 1next             usage data-pointer.
        02 pexception-routine                 usage int.
        02 filler            pic x(4).

       01  EXCEPTION-REGISTRATION-RECORD      is typedef
                             usage
           1-exception-registration-recor.
       01  PEXCEPTION-REGISTRATION-RECORD     is typedef
                             usage data-pointer.
       01  1-NT-TIB          is typedef.
        02 exceptionlist     usage data-pointer.
        02 stackbase         usage data-pointer.
        02 stacklimit        usage data-pointer.
        02 subsystemtib      usage data-pointer.
        02 filler.
         03  1filler.
          04 fiberdata       usage data-pointer.
         03  filler redefines 1filler.
          04 version         usage uns-long.
        02 arbitraryuserpointer               usage data-pointer.
        02 1self             usage data-pointer.

       01  NT-TIB            is typedef       usage 1-nt-tib.
       01  PNT-TIB           is typedef       usage data-pointer.
       01  1-NT-TIB32        is typedef.
        02 exceptionlist     usage uns-long.
        02 stackbase         usage uns-long.
        02 stacklimit        usage uns-long.
        02 subsystemtib      usage uns-long.
        02 filler.
         03  1filler.
          04 fiberdata       usage uns-long.
         03  filler redefines 1filler.
          04 version         usage uns-long.
        02 arbitraryuserpointer               usage uns-long.
        02 1self             usage uns-long.

       01  NT-TIB32          is typedef       usage 1-nt-tib32.
       01  PNT-TIB32         is typedef       usage data-pointer.
       01  1-NT-TIB64        is typedef.
        02 exceptionlist     usage uns-l-long.
        02 stackbase         usage uns-l-long.
        02 stacklimit        usage uns-l-long.
        02 subsystemtib      usage uns-l-long.
        02 filler.
         03  1filler.
          04 fiberdata       usage uns-l-long.
         03  filler redefines 1filler.
          04 version         usage uns-long.
        02 arbitraryuserpointer               usage uns-l-long.
        02 1self             usage uns-l-long.

       01  NT-TIB64          is typedef       usage 1-nt-tib64.
       01  PNT-TIB64         is typedef       usage data-pointer.
       01  1-UMS-CREATE-THREAD-ATTRIBUTES     is typedef.
        02 umsversion        usage uns-long.
        02 umscontext        usage data-pointer.
        02 umscompletionlist usage data-pointer.

       01  UMS-CREATE-THREAD-ATTRIBUTES       is typedef
                             usage
           1-ums-create-thread-attributes.
       01  PUMS-CREATE-THREAD-ATTRIBUTES      is typedef
                             usage data-pointer.
       01  1-COMPONENT-FILTER                 is typedef.
        02 componentflags    usage uns-long.

       01  COMPONENT-FILTER  is typedef       usage 1-component-filter.
       01  PCOMPONENT-FILTER is typedef       usage data-pointer.
       01  1-PROCESS-DYNAMIC-EH-CONTINUAT     is typedef.
        02 targetaddress     usage uns-long.
        02 flags             usage uns-long.

       01  PROCESS-DYNAMIC-EH-CONTINUATIO     is typedef
                             usage
           1-process-dynamic-eh-continuat.
       01  PPROCESS-DYNAMIC-EH-CONTINUATI     is typedef
                             usage data-pointer.
       01  2-PROCESS-DYNAMIC-EH-CONTINUAT     is typedef.
        02 numberoftargets   usage uns-short.
        02 reserved          usage uns-short.
        02 filler            pic x(4).
        02 reserved2         usage uns-long.
        02 targets           usage data-pointer.

       01  1PROCESS-DYNAMIC-EH-CONTINUATI     is typedef
                             usage
           2-process-dynamic-eh-continuat.
       01  1PPROCESS-DYNAMIC-EH-CONTINUAT     is typedef
                             usage data-pointer.
       01  1-PROCESS-DYNAMIC-ENFORCED-ADD     is typedef.
        02 baseaddress       usage uns-long.
        02 1size             usage uns-long.
        02 flags             usage uns-long.

       01  PROCESS-DYNAMIC-ENFORCED-ADDRE     is typedef
                             usage
           1-process-dynamic-enforced-add.
       01  PPROCESS-DYNAMIC-ENFORCED-ADDR     is typedef
                             usage data-pointer.
       01  2-PROCESS-DYNAMIC-ENFORCED-ADD     is typedef.
        02 numberofranges    usage uns-short.
        02 reserved          usage uns-short.
        02 filler            pic x(4).
        02 reserved2         usage uns-long.
        02 ranges            usage data-pointer.

       01  1PROCESS-DYNAMIC-ENFORCED-ADDR     is typedef
                             usage
           2-process-dynamic-enforced-add.
       01  1PPROCESS-DYNAMIC-ENFORCED-ADD     is typedef
                             usage data-pointer.
       01  1-QUOTA-LIMITS    is typedef.
        02 pagedpoollimit    usage uns-long.
        02 nonpagedpoollimit usage uns-long.
        02 minimumworkingsetsize              usage uns-long.
        02 maximumworkingsetsize              usage uns-long.
        02 pagefilelimit     usage uns-long.
        02 timelimit         usage large-integer.

       01  QUOTA-LIMITS      is typedef       usage 1-quota-limits.
       01  PQUOTA-LIMITS     is typedef       usage data-pointer.
       01  1-RATE-QUOTA-LIMIT                 is typedef.
        02 2-RATE-QUOTA-LIMIT.
         03  ratedata        usage uns-long.
        02 filler redefines 2-RATE-QUOTA-LIMIT.
         03  filler.
          04 ratepercent.
           05  ratepercent   usage uns-int.                 *> 7 Bits
          04 filler redefines ratepercent.
           05  reserved0     usage uns-int.                 *> 25 Bits
          04 filler          pic x(4).

       01  RATE-QUOTA-LIMIT  is typedef       usage 1-rate-quota-limit.
       01  PRATE-QUOTA-LIMIT is typedef       usage data-pointer.
       01  1-QUOTA-LIMITS-EX is typedef.
        02 pagedpoollimit    usage uns-long.
        02 nonpagedpoollimit usage uns-long.
        02 minimumworkingsetsize              usage uns-long.
        02 maximumworkingsetsize              usage uns-long.
        02 pagefilelimit     usage uns-long.
        02 timelimit         usage large-integer.
        02 workingsetlimit   usage uns-long.
        02 reserved2         usage uns-long.
        02 reserved3         usage uns-long.
        02 reserved4         usage uns-long.
        02 flags             usage uns-long.
        02 cpuratelimit      usage rate-quota-limit.

       01  QUOTA-LIMITS-EX   is typedef       usage 1-quota-limits-ex.
       01  PQUOTA-LIMITS-EX  is typedef       usage data-pointer.
       01  1-IO-COUNTERS     is typedef.
        02 readoperationcount                 usage uns-l-long.
        02 writeoperationcount                usage uns-l-long.
        02 otheroperationcount                usage uns-l-long.
        02 readtransfercount usage uns-l-long.
        02 writetransfercount                 usage uns-l-long.
        02 othertransfercount                 usage uns-l-long.

       01  IO-COUNTERS       is typedef       usage 1-io-counters.
       01  PIO-COUNTERS      is typedef       usage data-pointer.
       01  1-HARDWARE-COUNTER-TYPE            is typedef usage uns-int.
       78  pmccounter                         value           0.
       78  maxhardwarecountertype             value           1.

       01  HARDWARE-COUNTER-TYPE              is typedef
                             usage
           1-hardware-counter-type.
       01  PHARDWARE-COUNTER-TYPE             is typedef
                             usage data-pointer.
       01  1-PROCESS-MITIGATION-POLICY        is typedef usage uns-int.
       78  processdeppolicy                   value           0.
       78  processaslrpolicy                  value           1.
       78  processdynamiccodepolicy           value           2.
       78  processstricthandlecheckpolicy     value           3.
       78  processsystemcalldisablepolicy     value           4.
       78  processmitigationoptionsmask       value           5.
       78  processextensionpointdisablepo     value           6.
       78  processcontrolflowguardpolicy      value           7.
       78  processsignaturepolicy             value           8.
       78  processfontdisablepolicy           value           9.
       78  processimageloadpolicy             value          10.
       78  processsystemcallfilterpolicy      value          11.
       78  processpayloadrestrictionpolic     value          12.
       78  processchildprocesspolicy          value          13.
       78  processsidechannelisolationpol     value          14.
       78  processusershadowstackpolicy       value          15.
       78  processredirectiontrustpolicy      value          16.
       78  maxprocessmitigationpolicy         value          17.

       01  PROCESS-MITIGATION-POLICY          is typedef
                             usage
           1-process-mitigation-policy.
       01  PPROCESS-MITIGATION-POLICY         is typedef
                             usage data-pointer.
       01  1-PROCESS-MITIGATION-ASLR-POLI     is typedef.
        02 filler.
         03  1filler.
          04 flags           usage uns-long.
         03  filler redefines 1filler.
          04 filler.
           05  enablebottomuprandomization.
            06 enablebottomuprandomization    usage uns-int.*> 1 Bit
           05  filler redefines enablebottomuprandomization.
            06 enableforcerelocateimages      usage uns-int.*> 1 Bit
           05  filler redefines enablebottomuprandomization.
            06 enablehighentropy              usage uns-int.*> 1 Bit
           05  filler redefines enablebottomuprandomization.
            06 disallowstrippedimages         usage uns-int.*> 1 Bit
           05  filler redefines enablebottomuprandomization.
            06 reservedflags usage uns-int.                 *> 28 Bits
           05  filler        pic x(4).

       01  PROCESS-MITIGATION-ASLR-POLICY     is typedef
                             usage
           1-process-mitigation-aslr-poli.
       01  PPROCESS-MITIGATION-ASLR-POLIC     is typedef
                             usage data-pointer.
       01  1-PROCESS-MITIGATION-DEP-POLIC     is typedef.
        02 filler.
         03  1filler.
          04 flags           usage uns-long.
         03  filler redefines 1filler.
          04 filler.
           05  1enable.
            06 1enable       usage uns-int.                 *> 1 Bit
           05  filler redefines 1enable.
            06 disableatlthunkemulation       usage uns-int.*> 1 Bit
           05  filler redefines 1enable.
            06 reservedflags usage uns-int.                 *> 30 Bits
           05  filler        pic x(4).
        02 1permanent        usage uns-char.

       01  PROCESS-MITIGATION-DEP-POLICY      is typedef
                             usage
           1-process-mitigation-dep-polic.
       01  PPROCESS-MITIGATION-DEP-POLICY     is typedef
                             usage data-pointer.
       01  1-PROCESS-MITIGATION-STRICT-HA     is typedef.
        02 filler.
         03  1filler.
          04 flags           usage uns-long.
         03  filler redefines 1filler.
          04 filler.
           05  raiseexceptiononinvalidhandler.
            06 raiseexceptiononinvalidhandler usage uns-int.*> 1 Bit
           05  filler redefines
                                   raiseexceptiononinvalidhandler.
            06 handleexceptionspermanentlyena usage uns-int.*> 1 Bit
           05  filler redefines
                                   raiseexceptiononinvalidhandler.
            06 reservedflags usage uns-int.                 *> 30 Bits
           05  filler        pic x(4).

       01  PROCESS-MITIGATION-STRICT-HAND     is typedef
                             usage
           1-process-mitigation-strict-ha.
       01  PPROCESS-MITIGATION-STRICT-HAN     is typedef
                             usage data-pointer.
       01  1-PROCESS-MITIGATION-SYSTEM-CA     is typedef.
        02 filler.
         03  1filler.
          04 flags           usage uns-long.
         03  filler redefines 1filler.
          04 filler.
           05  disallowwin32ksystemcalls.
            06 disallowwin32ksystemcalls      usage uns-int.*> 1 Bit
           05  filler redefines disallowwin32ksystemcalls.
            06 auditdisallowwin32ksystemcalls usage uns-int.*> 1 Bit
           05  filler redefines disallowwin32ksystemcalls.
            06 reservedflags usage uns-int.                 *> 30 Bits
           05  filler        pic x(4).

       01  PROCESS-MITIGATION-SYSTEM-CALL     is typedef
                             usage
           1-process-mitigation-system-ca.
       01  PPROCESS-MITIGATION-SYSTEM-CAL     is typedef
                             usage data-pointer.
       01  1-PROCESS-MITIGATION-EXTENSION     is typedef.
        02 filler.
         03  1filler.
          04 flags           usage uns-long.
         03  filler redefines 1filler.
          04 filler.
           05  disableextensionpoints.
            06 disableextensionpoints         usage uns-int.*> 1 Bit
           05  filler redefines disableextensionpoints.
            06 reservedflags usage uns-int.                 *> 31 Bits
           05  filler        pic x(4).

       01  PROCESS-MITIGATION-EXTENSION-P     is typedef
                             usage
           1-process-mitigation-extension.
       01  PPROCESS-MITIGATION-EXTENSION      is typedef
                             usage data-pointer.
       01  1-PROCESS-MITIGATION-DYNAMIC-C     is typedef.
        02 filler.
         03  1filler.
          04 flags           usage uns-long.
         03  filler redefines 1filler.
          04 filler.
           05  prohibitdynamiccode.
            06 prohibitdynamiccode            usage uns-int.*> 1 Bit
           05  filler redefines prohibitdynamiccode.
            06 allowthreadoptout              usage uns-int.*> 1 Bit
           05  filler redefines prohibitdynamiccode.
            06 allowremotedowngrade           usage uns-int.*> 1 Bit
           05  filler redefines prohibitdynamiccode.
            06 auditprohibitdynamiccode       usage uns-int.*> 1 Bit
           05  filler redefines prohibitdynamiccode.
            06 reservedflags usage uns-int.                 *> 28 Bits
           05  filler        pic x(4).

       01  PROCESS-MITIGATION-DYNAMIC-COD     is typedef
                             usage
           1-process-mitigation-dynamic-c.
       01  PPROCESS-MITIGATION-DYNAMIC-CO     is typedef
                             usage data-pointer.
       01  1-PROCESS-MITIGATION-CONTROL-F     is typedef.
        02 filler.
         03  1filler.
          04 flags           usage uns-long.
         03  filler redefines 1filler.
          04 filler.
           05  enablecontrolflowguard.
            06 enablecontrolflowguard         usage uns-int.*> 1 Bit
           05  filler redefines enablecontrolflowguard.
            06 enableexportsuppression        usage uns-int.*> 1 Bit
           05  filler redefines enablecontrolflowguard.
            06 strictmode    usage uns-int.                 *> 1 Bit
           05  filler redefines enablecontrolflowguard.
            06 enablexfg     usage uns-int.                 *> 1 Bit
           05  filler redefines enablecontrolflowguard.
            06 enablexfgauditmode             usage uns-int.*> 1 Bit
           05  filler redefines enablecontrolflowguard.
            06 reservedflags usage uns-int.                 *> 27 Bits
           05  filler        pic x(4).

       01  PROCESS-MITIGATION-CONTROL-FLO     is typedef
                             usage
           1-process-mitigation-control-f.
       01  PPROCESS-MITIGATION-CONTROL-FL     is typedef
                             usage data-pointer.
       01  1-PROCESS-MITIGATION-BINARY-SI     is typedef.
        02 filler.
         03  1filler.
          04 flags           usage uns-long.
         03  filler redefines 1filler.
          04 filler.
           05  microsoftsignedonly.
            06 microsoftsignedonly            usage uns-int.*> 1 Bit
           05  filler redefines microsoftsignedonly.
            06 storesignedonly                usage uns-int.*> 1 Bit
           05  filler redefines microsoftsignedonly.
            06 mitigationoptin                usage uns-int.*> 1 Bit
           05  filler redefines microsoftsignedonly.
            06 auditmicrosoftsignedonly       usage uns-int.*> 1 Bit
           05  filler redefines microsoftsignedonly.
            06 auditstoresignedonly           usage uns-int.*> 1 Bit
           05  filler redefines microsoftsignedonly.
            06 reservedflags usage uns-int.                 *> 27 Bits
           05  filler        pic x(4).

       01  PROCESS-MITIGATION-BINARY-SIGN     is typedef
                             usage
           1-process-mitigation-binary-si.
       01  PPROCESS-MITIGATION-BINARY-SIG     is typedef
                             usage data-pointer.
       01  1-PROCESS-MITIGATION-FONT-DISA     is typedef.
        02 filler.
         03  1filler.
          04 flags           usage uns-long.
         03  filler redefines 1filler.
          04 filler.
           05  disablenonsystemfonts.
            06 disablenonsystemfonts          usage uns-int.*> 1 Bit
           05  filler redefines disablenonsystemfonts.
            06 auditnonsystemfontloading      usage uns-int.*> 1 Bit
           05  filler redefines disablenonsystemfonts.
            06 reservedflags usage uns-int.                 *> 30 Bits
           05  filler        pic x(4).

       01  PROCESS-MITIGATION-FONT-DISABL     is typedef
                             usage
           1-process-mitigation-font-disa.
       01  PPROCESS-MITIGATION-FONT-DISAB     is typedef
                             usage data-pointer.
       01  1-PROCESS-MITIGATION-IMAGE-LOA     is typedef.
        02 filler.
         03  1filler.
          04 flags           usage uns-long.
         03  filler redefines 1filler.
          04 filler.
           05  noremoteimages.
            06 noremoteimages                 usage uns-int.*> 1 Bit
           05  filler redefines noremoteimages.
            06 nolowmandatorylabelimages      usage uns-int.*> 1 Bit
           05  filler redefines noremoteimages.
            06 prefersystem32images           usage uns-int.*> 1 Bit
           05  filler redefines noremoteimages.
            06 auditnoremoteimages            usage uns-int.*> 1 Bit
           05  filler redefines noremoteimages.
            06 auditnolowmandatorylabelimages usage uns-int.*> 1 Bit
           05  filler redefines noremoteimages.
            06 reservedflags usage uns-int.                 *> 27 Bits
           05  filler        pic x(4).

       01  PROCESS-MITIGATION-IMAGE-LOAD      is typedef
                             usage
           1-process-mitigation-image-loa.
       01  PPROCESS-MITIGATION-IMAGE-LOAD     is typedef
                             usage data-pointer.
       01  2-PROCESS-MITIGATION-SYSTEM-CA     is typedef.
        02 filler.
         03  1filler.
          04 flags           usage uns-long.
         03  filler redefines 1filler.
          04 filler.
           05  filterid.
            06 filterid      usage uns-int.                 *> 4 Bits
           05  filler redefines filterid.
            06 reservedflags usage uns-int.                 *> 28 Bits
           05  filler        pic x(4).

       01  1PROCESS-MITIGATION-SYSTEM-CAL     is typedef
                             usage
           2-process-mitigation-system-ca.
       01  1PPROCESS-MITIGATION-SYSTEM-CA     is typedef
                             usage data-pointer.
       01  1-PROCESS-MITIGATION-PAYLOAD-R     is typedef.
        02 filler.
         03  1filler.
          04 flags           usage uns-long.
         03  filler redefines 1filler.
          04 filler.
           05  enableexportaddressfilter.
            06 enableexportaddressfilter      usage uns-int.*> 1 Bit
           05  filler redefines enableexportaddressfilter.
            06 auditexportaddressfilter       usage uns-int.*> 1 Bit
           05  filler redefines enableexportaddressfilter.
            06 enableexportaddressfilterplus  usage uns-int.*> 1 Bit
           05  filler redefines enableexportaddressfilter.
            06 auditexportaddressfilterplus   usage uns-int.*> 1 Bit
           05  filler redefines enableexportaddressfilter.
            06 enableimportaddressfilter      usage uns-int.*> 1 Bit
           05  filler redefines enableexportaddressfilter.
            06 auditimportaddressfilter       usage uns-int.*> 1 Bit
           05  filler redefines enableexportaddressfilter.
            06 enableropstackpivot            usage uns-int.*> 1 Bit
           05  filler redefines enableexportaddressfilter.
            06 auditropstackpivot             usage uns-int.*> 1 Bit
           05  filler redefines enableexportaddressfilter.
            06 enableropcallercheck           usage uns-int.*> 1 Bit
           05  filler redefines enableexportaddressfilter.
            06 auditropcallercheck            usage uns-int.*> 1 Bit
           05  filler redefines enableexportaddressfilter.
            06 enableropsimexec               usage uns-int.*> 1 Bit
           05  filler redefines enableexportaddressfilter.
            06 auditropsimexec                usage uns-int.*> 1 Bit
           05  filler redefines enableexportaddressfilter.
            06 reservedflags usage uns-int.                 *> 20 Bits
           05  filler        pic x(4).

       01  PROCESS-MITIGATION-PAYLOAD-RES     is typedef
                             usage
           1-process-mitigation-payload-r.
       01  PPROCESS-MITIGATION-PAYLOAD-RE     is typedef
                             usage data-pointer.
       01  1-PROCESS-MITIGATION-CHILD-PRO     is typedef.
        02 filler.
         03  1filler.
          04 flags           usage uns-long.
         03  filler redefines 1filler.
          04 filler.
           05  nochildprocesscreation.
            06 nochildprocesscreation         usage uns-int.*> 1 Bit
           05  filler redefines nochildprocesscreation.
            06 auditnochildprocesscreation    usage uns-int.*> 1 Bit
           05  filler redefines nochildprocesscreation.
            06 allowsecureprocesscreation     usage uns-int.*> 1 Bit
           05  filler redefines nochildprocesscreation.
            06 reservedflags usage uns-int.                 *> 29 Bits
           05  filler        pic x(4).

       01  PROCESS-MITIGATION-CHILD-PROCE     is typedef
                             usage
           1-process-mitigation-child-pro.
       01  PPROCESS-MITIGATION-CHILD-PROC     is typedef
                             usage data-pointer.
       01  1-PROCESS-MITIGATION-SIDE-CHAN     is typedef.
        02 filler.
         03  1filler.
          04 flags           usage uns-long.
         03  filler redefines 1filler.
          04 filler.
           05  smtbranchtargetisolation.
            06 smtbranchtargetisolation       usage uns-int.*> 1 Bit
           05  filler redefines smtbranchtargetisolation.
            06 isolatesecuritydomain          usage uns-int.*> 1 Bit
           05  filler redefines smtbranchtargetisolation.
            06 disablepagecombine             usage uns-int.*> 1 Bit
           05  filler redefines smtbranchtargetisolation.
            06 speculativestorebypassdisable  usage uns-int.*> 1 Bit
           05  filler redefines smtbranchtargetisolation.
            06 reservedflags usage uns-int.                 *> 28 Bits
           05  filler        pic x(4).

       01  PROCESS-MITIGATION-SIDE-CHANNE     is typedef
                             usage
           1-process-mitigation-side-chan.
       01  PPROCESS-MITIGATION-SIDE-CHANN     is typedef
                             usage data-pointer.
       01  1-PROCESS-MITIGATION-USER-SHAD     is typedef.
        02 filler.
         03  1filler.
          04 flags           usage uns-long.
         03  filler redefines 1filler.
          04 filler.
           05  enableusershadowstack.
            06 enableusershadowstack          usage uns-int.*> 1 Bit
           05  filler redefines enableusershadowstack.
            06 auditusershadowstack           usage uns-int.*> 1 Bit
           05  filler redefines enableusershadowstack.
            06 setcontextipvalidation         usage uns-int.*> 1 Bit
           05  filler redefines enableusershadowstack.
            06 auditsetcontextipvalidation    usage uns-int.*> 1 Bit
           05  filler redefines enableusershadowstack.
            06 enableusershadowstackstrictmod usage uns-int.*> 1 Bit
           05  filler redefines enableusershadowstack.
            06 blocknoncetbinaries            usage uns-int.*> 1 Bit
           05  filler redefines enableusershadowstack.
            06 blocknoncetbinariesnonehcont   usage uns-int.*> 1 Bit
           05  filler redefines enableusershadowstack.
            06 auditblocknoncetbinaries       usage uns-int.*> 1 Bit
           05  filler redefines enableusershadowstack.
            06 cetdynamicapisoutofproconly    usage uns-int.*> 1 Bit
           05  filler redefines enableusershadowstack.
            06 setcontextipvalidationrelaxedm usage uns-int.*> 1 Bit
           05  filler redefines enableusershadowstack.
            06 reservedflags usage uns-int.                 *> 22 Bits
           05  filler        pic x(4).

       01  PROCESS-MITIGATION-USER-SHADOW     is typedef
                             usage
           1-process-mitigation-user-shad.
       01  PPROCESS-MITIGATION-USER-SHADO     is typedef
                             usage data-pointer.
       01  1-PROCESS-MITIGATION-REDIRECTI     is typedef.
        02 filler.
         03  1filler.
          04 flags           usage uns-long.
         03  filler redefines 1filler.
          04 filler.
           05  enforceredirectiontrust.
            06 enforceredirectiontrust        usage uns-int.*> 1 Bit
           05  filler redefines enforceredirectiontrust.
            06 auditredirectiontrust          usage uns-int.*> 1 Bit
           05  filler redefines enforceredirectiontrust.
            06 reservedflags usage uns-int.                 *> 30 Bits
           05  filler        pic x(4).

       01  PROCESS-MITIGATION-REDIRECTION     is typedef
                             usage
           1-process-mitigation-redirecti.
       01  PPROCESS-MITIGATION-REDIRECTIO     is typedef
                             usage data-pointer.
       01  1-JOBOBJECT-BASIC-ACCOUNTING-I     is typedef.
        02 totalusertime     usage large-integer.
        02 totalkerneltime   usage large-integer.
        02 thisperiodtotalusertime            usage large-integer.
        02 thisperiodtotalkerneltime          usage large-integer.
        02 totalpagefaultcount                usage uns-long.
        02 totalprocesses    usage uns-long.
        02 activeprocesses   usage uns-long.
        02 totalterminatedprocesses           usage uns-long.

       01  JOBOBJECT-BASIC-ACCOUNTING-INF     is typedef
                             usage
           1-jobobject-basic-accounting-i.
       01  PJOBOBJECT-BASIC-ACCOUNTING-IN     is typedef
                             usage data-pointer.
       01  1-JOBOBJECT-BASIC-LIMIT-INFORM     is typedef.
        02 perprocessusertimelimit            usage large-integer.
        02 perjobusertimelimit                usage large-integer.
        02 limitflags        usage uns-long.
        02 minimumworkingsetsize              usage uns-long.
        02 maximumworkingsetsize              usage uns-long.
        02 activeprocesslimit                 usage uns-long.
        02 affinity          usage uns-long.
        02 priorityclass     usage uns-long.
        02 schedulingclass   usage uns-long.

       01  JOBOBJECT-BASIC-LIMIT-INFORMAT     is typedef
                             usage
           1-jobobject-basic-limit-inform.
       01  PJOBOBJECT-BASIC-LIMIT-INFORMA     is typedef
                             usage data-pointer.
       01  1-JOBOBJECT-EXTENDED-LIMIT-INF     is typedef.
        02 basiclimitinformation              usage
           jobobject-basic-limit-informat.
        02 ioinfo            usage io-counters.
        02 processmemorylimit                 usage uns-long.
        02 jobmemorylimit    usage uns-long.
        02 peakprocessmemoryused              usage uns-long.
        02 peakjobmemoryused usage uns-long.

       01  JOBOBJECT-EXTENDED-LIMIT-INFOR     is typedef
                             usage
           1-jobobject-extended-limit-inf.
       01  PJOBOBJECT-EXTENDED-LIMIT-INFO     is typedef
                             usage data-pointer.
       01  1-JOBOBJECT-BASIC-PROCESS-ID-L     is typedef.
        02 numberofassignedprocesses          usage uns-long.
        02 numberofprocessidsinlist           usage uns-long.
        02 processidlist occurs 1             usage uns-long.

       01  JOBOBJECT-BASIC-PROCESS-ID-LIS     is typedef
                             usage
           1-jobobject-basic-process-id-l.
       01  PJOBOBJECT-BASIC-PROCESS-ID-LI     is typedef
                             usage data-pointer.
       01  1-JOBOBJECT-BASIC-UI-RESTRICTI     is typedef.
        02 uirestrictionsclass                usage uns-long.

       01  JOBOBJECT-BASIC-UI-RESTRICTION     is typedef
                             usage
           1-jobobject-basic-ui-restricti.
       01  PJOBOBJECT-BASIC-UI-RESTRICTIO     is typedef
                             usage data-pointer.
       01  1-JOBOBJECT-SECURITY-LIMIT-INF     is typedef.
        02 securitylimitflags                 usage uns-long.
        02 jobtoken          usage data-pointer.
        02 sidstodisable     usage data-pointer.
        02 privilegestodelete                 usage data-pointer.
        02 restrictedsids    usage data-pointer.

       01  JOBOBJECT-SECURITY-LIMIT-INFOR     is typedef
                             usage
           1-jobobject-security-limit-inf.
       01  PJOBOBJECT-SECURITY-LIMIT-INFO     is typedef
                             usage data-pointer.
       01  1-JOBOBJECT-END-OF-JOB-TIME-IN     is typedef.
        02 endofjobtimeaction                 usage uns-long.

       01  JOBOBJECT-END-OF-JOB-TIME-INFO     is typedef
                             usage
           1-jobobject-end-of-job-time-in.
       01  PJOBOBJECT-END-OF-JOB-TIME-INF     is typedef
                             usage data-pointer.
       01  1-JOBOBJECT-ASSOCIATE-COMPLETI     is typedef.
        02 completionkey     usage data-pointer.
        02 completionport    usage data-pointer.

       01  JOBOBJECT-ASSOCIATE-COMPLETION     is typedef
                             usage
           1-jobobject-associate-completi.
       01  PJOBOBJECT-ASSOCIATE-COMPLETIO     is typedef
                             usage data-pointer.
       01  1-JOBOBJECT-BASIC-AND-IO-ACCOU     is typedef.
        02 basicinfo         usage
           jobobject-basic-accounting-inf.
        02 ioinfo            usage io-counters.

       01  JOBOBJECT-BASIC-AND-IO-ACCOUNT     is typedef
                             usage
           1-jobobject-basic-and-io-accou.
       01  PJOBOBJECT-BASIC-AND-IO-ACCOUN     is typedef
                             usage data-pointer.
       01  1-JOBOBJECT-JOBSET-INFORMATION     is typedef.
        02 memberlevel       usage uns-long.

       01  JOBOBJECT-JOBSET-INFORMATION       is typedef
                             usage
           1-jobobject-jobset-information.
       01  PJOBOBJECT-JOBSET-INFORMATION      is typedef
                             usage data-pointer.
       01  1-JOBOBJECT-RATE-CONTROL-TOLER     is typedef usage uns-int.
       78  tolerancelow                       value           1.
       78  tolerancemedium                    value           2.
       78  tolerancehigh                      value           3.

       01  JOBOBJECT-RATE-CONTROL-TOLERAN     is typedef
                             usage
           1-jobobject-rate-control-toler.
       01  PJOBOBJECT-RATE-CONTROL-TOLERA     is typedef
                             usage data-pointer.
       01  2-JOBOBJECT-RATE-CONTROL-TOLER     is typedef usage uns-int.
       78  toleranceintervalshort             value           1.
       78  toleranceintervalmedium            value           2.
       78  toleranceintervallong              value           3.

       01  1JOBOBJECT-RATE-CONTROL-TOLERA     is typedef
                             usage
           2-jobobject-rate-control-toler.
       01  1PJOBOBJECT-RATE-CONTROL-TOLER     is typedef
                             usage data-pointer.
       01  1-JOBOBJECT-NOTIFICATION-LIMIT     is typedef.
        02 ioreadbyteslimit  usage uns-l-long.
        02 iowritebyteslimit usage uns-l-long.
        02 perjobusertimelimit                usage large-integer.
        02 jobmemorylimit    usage uns-l-long.
        02 ratecontroltolerance               usage
           jobobject-rate-control-toleran.
        02 ratecontroltoleranceinterval       usage
           1jobobject-rate-control-tolera.
        02 limitflags        usage uns-long.

       01  JOBOBJECT-NOTIFICATION-LIMIT-I     is typedef
                             usage
           1-jobobject-notification-limit.
       01  PJOBOBJECT-NOTIFICATION-LIMIT      is typedef
                             usage data-pointer.
       01  1JOBOBJECT-NOTIFICATION-LIMIT-     is typedef.
        02 ioreadbyteslimit  usage uns-l-long.
        02 iowritebyteslimit usage uns-l-long.
        02 perjobusertimelimit                usage large-integer.
        02 filler.
         03  1filler.
          04 jobhighmemorylimit               usage uns-l-long.
         03  filler redefines 1filler.
          04 jobmemorylimit  usage uns-l-long.
        02 filler.
         03  2filler.
          04 ratecontroltolerance             usage
           jobobject-rate-control-toleran.
         03  filler redefines 2filler.
          04 cpuratecontroltolerance          usage
           jobobject-rate-control-toleran.
        02 filler.
         03  3filler.
          04 ratecontroltoleranceinterval     usage
           1jobobject-rate-control-tolera.
         03  filler redefines 3filler.
          04 cpuratecontroltoleranceinterva   usage
           1jobobject-rate-control-tolera.
        02 limitflags        usage uns-long.
        02 ioratecontroltolerance             usage
           jobobject-rate-control-toleran.
        02 filler            pic x(4).
        02 joblowmemorylimit usage uns-l-long.
        02 ioratecontroltoleranceinterval     usage
           1jobobject-rate-control-tolera.
        02 netratecontroltolerance            usage
           jobobject-rate-control-toleran.
        02 netratecontroltoleranceinterva     usage
           1jobobject-rate-control-tolera.

       01  2JOBOBJECT-NOTIFICATION-LIMIT-     is typedef
                             usage
           1jobobject-notification-limit-.
       01  1-JOBOBJECT-LIMIT-VIOLATION-IN     is typedef.
        02 limitflags        usage uns-long.
        02 violationlimitflags                usage uns-long.
        02 ioreadbytes       usage uns-l-long.
        02 ioreadbyteslimit  usage uns-l-long.
        02 iowritebytes      usage uns-l-long.
        02 iowritebyteslimit usage uns-l-long.
        02 perjobusertime    usage large-integer.
        02 perjobusertimelimit                usage large-integer.
        02 jobmemory         usage uns-l-long.
        02 jobmemorylimit    usage uns-l-long.
        02 ratecontroltolerance               usage
           jobobject-rate-control-toleran.
        02 ratecontroltolerancelimit          usage
           jobobject-rate-control-toleran.

       01  JOBOBJECT-LIMIT-VIOLATION-INFO     is typedef
                             usage
           1-jobobject-limit-violation-in.
       01  PJOBOBJECT-LIMIT-VIOLATION-INF     is typedef
                             usage data-pointer.
       01  1JOBOBJECT-LIMIT-VIOLATION-INF     is typedef.
        02 limitflags        usage uns-long.
        02 violationlimitflags                usage uns-long.
        02 ioreadbytes       usage uns-l-long.
        02 ioreadbyteslimit  usage uns-l-long.
        02 iowritebytes      usage uns-l-long.
        02 iowritebyteslimit usage uns-l-long.
        02 perjobusertime    usage large-integer.
        02 perjobusertimelimit                usage large-integer.
        02 jobmemory         usage uns-l-long.
        02 filler.
         03  1filler.
          04 jobhighmemorylimit               usage uns-l-long.
         03  filler redefines 1filler.
          04 jobmemorylimit  usage uns-l-long.
        02 filler.
         03  2filler.
          04 ratecontroltolerance             usage
           jobobject-rate-control-toleran.
         03  filler redefines 2filler.
          04 cpuratecontroltolerance          usage
           jobobject-rate-control-toleran.
        02 filler.
         03  3filler.
          04 ratecontroltolerancelimit        usage
           jobobject-rate-control-toleran.
         03  filler redefines 3filler.
          04 cpuratecontroltolerancelimit     usage
           jobobject-rate-control-toleran.
        02 joblowmemorylimit usage uns-l-long.
        02 ioratecontroltolerance             usage
           jobobject-rate-control-toleran.
        02 ioratecontroltolerancelimit        usage
           jobobject-rate-control-toleran.
        02 netratecontroltolerance            usage
           jobobject-rate-control-toleran.
        02 netratecontroltolerancelimit       usage
           jobobject-rate-control-toleran.

       01  2JOBOBJECT-LIMIT-VIOLATION-INF     is typedef
                             usage
           1jobobject-limit-violation-inf.
       01  1-JOBOBJECT-CPU-RATE-CONTROL-I     is typedef.
        02 controlflags      usage uns-long.
        02 filler.
         03  1filler.
          04 cpurate         usage uns-long.
         03  filler redefines 1filler.
          04 weight          usage uns-long.
         03  filler redefines 1filler.
          04 filler.
           05  minrate       usage uns-short.
           05  maxrate       usage uns-short.

       01  JOBOBJECT-CPU-RATE-CONTROL-INF     is typedef
                             usage
           1-jobobject-cpu-rate-control-i.
       01  PJOBOBJECT-CPU-RATE-CONTROL-IN     is typedef
                             usage data-pointer.
       01  JOB-OBJECT-NET-RATE-CONTROL-FL     is typedef usage uns-int.
       78  job-object-net-rate-control-en     value           1.
       78  job-object-net-rate-control-ma     value           2.
       78  job-object-net-rate-control-ds     value           4.
       78  job-object-net-rate-control-va     value           7.

       01  1JOB-OBJECT-NET-RATE-CONTROL-F     is typedef
                             usage
           job-object-net-rate-control-fl.

* Warning, already defined name: __C_ASSERT__
       01  JOBOBJECT-NET-RATE-CONTROL-INF     is typedef.
        02 maxbandwidth      usage uns-l-long.
        02 controlflags      usage
           1job-object-net-rate-control-f.
        02 dscptag           usage uns-char.

       01  1JOBOBJECT-NET-RATE-CONTROL-IN     is typedef
                             usage
           jobobject-net-rate-control-inf.
       01  JOB-OBJECT-IO-RATE-CONTROL-FLA     is typedef usage uns-int.
       78  job-object-io-rate-control-ena     value           1.
       78  job-object-io-rate-control-sta     value           2.
       78  job-object-io-rate-control-for     value           4.
       78  1job-object-io-rate-control-fo     value           8.
       78  job-object-io-rate-control-val     value  2080443516.

       01  1JOB-OBJECT-IO-RATE-CONTROL-FL     is typedef
                             usage
           job-object-io-rate-control-fla.
       01  JOBOBJECT-IO-RATE-CONTROL-INFO     is typedef.
        02 maxiops           usage l-long.
        02 maxbandwidth      usage l-long.
        02 reservationiops   usage l-long.
        02 volumename        usage data-pointer.
        02 baseiosize        usage uns-long.
        02 controlflags      usage
           1job-object-io-rate-control-fl.
        02 volumenamelength  usage uns-short.

       01  1JOBOBJECT-IO-RATE-CONTROL-INF     is typedef
                             usage
           jobobject-io-rate-control-info.
       01  2JOBOBJECT-IO-RATE-CONTROL-INF     is typedef
                             usage
           1jobobject-io-rate-control-inf.
       01  3JOBOBJECT-IO-RATE-CONTROL-INF     is typedef.
        02 maxiops           usage l-long.
        02 maxbandwidth      usage l-long.
        02 reservationiops   usage l-long.
        02 volumename        usage data-pointer.
        02 baseiosize        usage uns-long.
        02 controlflags      usage
           1job-object-io-rate-control-fl.
        02 volumenamelength  usage uns-short.
        02 filler            pic x(2).
        02 criticalreservationiops            usage l-long.
        02 reservationbandwidth               usage l-long.
        02 criticalreservationbandwidth       usage l-long.
        02 maxtimepercent    usage l-long.
        02 reservationtimepercent             usage l-long.
        02 criticalreservationtimepercent     usage l-long.

       01  4JOBOBJECT-IO-RATE-CONTROL-INF     is typedef
                             usage
           3jobobject-io-rate-control-inf.
       01  5JOBOBJECT-IO-RATE-CONTROL-INF     is typedef.
        02 maxiops           usage l-long.
        02 maxbandwidth      usage l-long.
        02 reservationiops   usage l-long.
        02 volumename        usage data-pointer.
        02 baseiosize        usage uns-long.
        02 controlflags      usage
           1job-object-io-rate-control-fl.
        02 volumenamelength  usage uns-short.
        02 filler            pic x(2).
        02 criticalreservationiops            usage l-long.
        02 reservationbandwidth               usage l-long.
        02 criticalreservationbandwidth       usage l-long.
        02 maxtimepercent    usage l-long.
        02 reservationtimepercent             usage l-long.
        02 criticalreservationtimepercent     usage l-long.
        02 softmaxiops       usage l-long.
        02 softmaxbandwidth  usage l-long.
        02 softmaxtimepercent                 usage l-long.
        02 limitexcessnotifyiops              usage l-long.
        02 limitexcessnotifybandwidth         usage l-long.
        02 limitexcessnotifytimepercent       usage l-long.

       01  6JOBOBJECT-IO-RATE-CONTROL-INF     is typedef
                             usage
           5jobobject-io-rate-control-inf.
       01  JOBOBJECT-IO-ATTRIBUTION-CONTR     is typedef usage uns-int.
       78  1jobobject-io-attribution-cont     value           1.
       78  2jobobject-io-attribution-cont     value           2.
       78  3jobobject-io-attribution-cont     value           3.

       01  4JOBOBJECT-IO-ATTRIBUTION-CONT     is typedef
                             usage
           jobobject-io-attribution-contr.
       01  1-JOBOBJECT-IO-ATTRIBUTION-STA     is typedef.
        02 iocount           usage uns-long.
        02 totalnonoverlappedqueuetime        usage uns-l-long.
        02 totalnonoverlappedservicetime      usage uns-l-long.
        02 totalsize         usage uns-l-long.

       01  JOBOBJECT-IO-ATTRIBUTION-STATS     is typedef
                             usage
           1-jobobject-io-attribution-sta.
       01  PJOBOBJECT-IO-ATTRIBUTION-STAT     is typedef
                             usage data-pointer.
       01  1-JOBOBJECT-IO-ATTRIBUTION-INF     is typedef.
        02 controlflags      usage uns-long.
        02 readstats         usage
           jobobject-io-attribution-stats.
        02 writestats        usage
           jobobject-io-attribution-stats.

       01  JOBOBJECT-IO-ATTRIBUTION-INFOR     is typedef
                             usage
           1-jobobject-io-attribution-inf.
       01  PJOBOBJECT-IO-ATTRIBUTION-INFO     is typedef
                             usage data-pointer.
       01  1-JOBOBJECTINFOCLASS               is typedef usage uns-int.
       78  jobobjectbasicaccountinginform     value           1.
       78  jobobjectbasiclimitinformation     value           2.
       78  jobobjectbasicprocessidlist        value           3.
       78  jobobjectbasicuirestrictions       value           4.
       78  jobobjectsecuritylimitinformat     value           5.
       78  jobobjectendofjobtimeinformati     value           6.
       78  jobobjectassociatecompletionpo     value           7.
       78  jobobjectbasicandioaccountingi     value           8.
       78  jobobjectextendedlimitinformat     value           9.
       78  jobobjectjobsetinformation         value          10.
       78  jobobjectgroupinformation          value          11.
       78  jobobjectnotificationlimitinfo     value          12.
       78  jobobjectlimitviolationinforma     value          13.
       78  jobobjectgroupinformationex        value          14.
       78  jobobjectcpuratecontrolinforma     value          15.
       78  jobobjectcompletionfilter          value          16.
       78  jobobjectcompletioncounter         value          17.
       78  jobobjectreserved1information      value          18.
       78  jobobjectreserved2information      value          19.
       78  jobobjectreserved3information      value          20.
       78  jobobjectreserved4information      value          21.
       78  jobobjectreserved5information      value          22.
       78  jobobjectreserved6information      value          23.
       78  jobobjectreserved7information      value          24.
       78  jobobjectreserved8information      value          25.
       78  jobobjectreserved9information      value          26.
       78  jobobjectreserved10information     value          27.
       78  jobobjectreserved11information     value          28.
       78  jobobjectreserved12information     value          29.
       78  jobobjectreserved13information     value          30.
       78  jobobjectreserved14information     value          31.
       78  jobobjectnetratecontrolinforma     value          32.
       78  1jobobjectnotificationlimitinf     value          33.
       78  1jobobjectlimitviolationinform     value          34.
       78  jobobjectcreatesilo                value          35.
       78  jobobjectsilobasicinformation      value          36.
       78  jobobjectreserved15information     value          37.
       78  jobobjectreserved16information     value          38.
       78  jobobjectreserved17information     value          39.
       78  jobobjectreserved18information     value          40.
       78  jobobjectreserved19information     value          41.
       78  jobobjectreserved20information     value          42.
       78  jobobjectreserved21information     value          43.
       78  jobobjectreserved22information     value          44.
       78  jobobjectreserved23information     value          45.
       78  jobobjectreserved24information     value          46.
       78  jobobjectreserved25information     value          47.
       78  maxjobobjectinfoclass              value          48.

       01  JOBOBJECTINFOCLASS                 is typedef
                             usage
           1-jobobjectinfoclass.
       01  1-SILOOBJECT-BASIC-INFORMATION     is typedef.
        02 siloid            usage uns-long.
        02 siloparentid      usage uns-long.
        02 numberofprocesses usage uns-long.
        02 isinserversilo    usage uns-char.
        02 reserved occurs 3 usage uns-char.

       01  SILOOBJECT-BASIC-INFORMATION       is typedef
                             usage
           1-siloobject-basic-information.
       01  PSILOOBJECT-BASIC-INFORMATION      is typedef
                             usage data-pointer.
       01  1-SERVERSILO-STATE                 is typedef usage uns-int.
       78  serversilo-initing                 value           0.
       78  serversilo-started                 value           1.
       78  serversilo-shutting-down           value           2.
       78  serversilo-terminating             value           3.
       78  serversilo-terminated              value           4.
       78  s-2                                value           5.


       01  1-SERVERSILO-BASIC-INFORMATION     is typedef.
        02 servicesessionid  usage uns-long.
        02 serversilo-state  usage int.
        02 filler            pic x(4).
        02 exitstatus        usage uns-long.
        02 isdownlevelcontainer               usage uns-char.
        02 filler            pic x(7).
        02 apisetschema      usage data-pointer.
        02 hostapisetschema  usage data-pointer.

       01  SERVERSILO-BASIC-INFORMATION       is typedef
                             usage
           1-serversilo-basic-information.
       01  PSERVERSILO-BASIC-INFORMATION      is typedef
                             usage data-pointer.
       01  1-FIRMWARE-TYPE   is typedef usage uns-int.
       78  firmwaretypeunknown                value           0.
       78  firmwaretypebios                   value           1.
       78  firmwaretypeuefi                   value           2.
       78  firmwaretypemax                    value           3.

       01  FIRMWARE-TYPE     is typedef       usage 1-firmware-type.
       01  PFIRMWARE-TYPE    is typedef       usage data-pointer.
       01  1-LOGICAL-PROCESSOR-RELATIONSH     is typedef usage uns-int.
       78  relationprocessorcore              value           0.
       78  relationnumanode                   value           1.
       78  relationcache                      value           2.
       78  relationprocessorpackage           value           3.
       78  relationgroup                      value           4.
       78  relationprocessordie               value           5.
       78  relationnumanodeex                 value           6.
       78  relationprocessormodule            value           7.
       78  relationall                        value       65535.

       01  LOGICAL-PROCESSOR-RELATIONSHIP     is typedef
                             usage
           1-logical-processor-relationsh.
       01  1-PROCESSOR-CACHE-TYPE             is typedef usage uns-int.
       78  cacheunified                       value           0.
       78  cacheinstruction                   value           1.
       78  cachedata                          value           2.
       78  cachetrace                         value           3.

       01  PROCESSOR-CACHE-TYPE               is typedef
                             usage
           1-processor-cache-type.
       01  1-CACHE-DESCRIPTOR                 is typedef.
        02 level             usage uns-char.
        02 associativity     usage uns-char.
        02 linesize          usage uns-short.
        02 filler            pic x(4).
        02 1size             usage uns-long.
        02 1type             usage
           processor-cache-type.

       01  CACHE-DESCRIPTOR  is typedef       usage 1-cache-descriptor.
       01  PCACHE-DESCRIPTOR is typedef       usage data-pointer.
       01  1-SYSTEM-LOGICAL-PROCESSOR-INF     is typedef.
        02 processormask     usage uns-long.
        02 relationship      usage
           logical-processor-relationship.
        02 filler            pic x(4).
        02 filler.
         03  1filler.
          04 processorcore.
           05  flags         usage uns-char.
          04 filler          pic x(23).
         03  filler redefines 1filler.
          04 numanode.
           05  nodenumber    usage uns-long.
          04 filler          pic x(16).
         03  filler redefines 1filler.
          04 cache           usage cache-descriptor.
          04 filler          pic x(4).
         03  filler redefines 1filler.
          04 reserved occurs 2                usage uns-l-long.
          04 filler          pic x(8).

       01  SYSTEM-LOGICAL-PROCESSOR-INFOR     is typedef
                             usage
           1-system-logical-processor-inf.
       01  PSYSTEM-LOGICAL-PROCESSOR-INFO     is typedef
                             usage data-pointer.
       01  1-PROCESSOR-RELATIONSHIP           is typedef.
        02 flags             usage uns-char.
        02 efficiencyclass   usage uns-char.
        02 reserved occurs 20                 usage uns-char.
        02 groupcount        usage uns-short.
        02 groupmask occurs 1                 usage group-affinity.

       01  PROCESSOR-RELATIONSHIP             is typedef
                             usage
           1-processor-relationship.
       01  PPROCESSOR-RELATIONSHIP            is typedef
                             usage data-pointer.
       01  1-NUMA-NODE-RELATIONSHIP           is typedef.
        02 nodenumber        usage uns-long.
        02 reserved occurs 18                 usage uns-char.
        02 groupcount        usage uns-short.
        02 filler.
         03  1filler.
          04 groupmask       usage group-affinity.
         03  filler redefines 1filler.
          04 groupmasks occurs 1              usage group-affinity.

       01  NUMA-NODE-RELATIONSHIP             is typedef
                             usage
           1-numa-node-relationship.
       01  PNUMA-NODE-RELATIONSHIP            is typedef
                             usage data-pointer.
       01  1-CACHE-RELATIONSHIP               is typedef.
        02 level             usage uns-char.
        02 associativity     usage uns-char.
        02 linesize          usage uns-short.
        02 filler            pic x(4).
        02 cachesize         usage uns-long.
        02 1type             usage
           processor-cache-type.
        02 reserved occurs 18                 usage uns-char.
        02 groupcount        usage uns-short.
        02 filler.
         03  1filler.
          04 groupmask       usage group-affinity.
         03  filler redefines 1filler.
          04 groupmasks occurs 1              usage group-affinity.

       01  CACHE-RELATIONSHIP                 is typedef
                             usage
           1-cache-relationship.
       01  PCACHE-RELATIONSHIP                is typedef
                             usage data-pointer.
       01  1-PROCESSOR-GROUP-INFO             is typedef.
        02 maximumprocessorcount              usage uns-char.
        02 activeprocessorcount               usage uns-char.
        02 reserved occurs 38                 usage uns-char.
        02 activeprocessormask                usage uns-long.

       01  PROCESSOR-GROUP-INFO               is typedef
                             usage
           1-processor-group-info.
       01  PPROCESSOR-GROUP-INFO              is typedef
                             usage data-pointer.
       01  1-GROUP-RELATIONSHIP               is typedef.
        02 maximumgroupcount usage uns-short.
        02 activegroupcount  usage uns-short.
        02 reserved occurs 20                 usage uns-char.
        02 groupinfo occurs 1                 usage
           processor-group-info.

       01  GROUP-RELATIONSHIP                 is typedef
                             usage
           1-group-relationship.
       01  PGROUP-RELATIONSHIP                is typedef
                             usage data-pointer.
       01  2-SYSTEM-LOGICAL-PROCESSOR-INF     is typedef.
        02 relationship      usage
           logical-processor-relationship.
        02 filler            pic x(4).
        02 1size             usage uns-long.
        02 filler.
         03  1filler.
          04 processor       usage
           processor-relationship.
          04 filler          pic x(32).
         03  filler redefines 1filler.
          04 numanode        usage
           numa-node-relationship.
          04 filler          pic x(28).
         03  filler redefines 1filler.
          04 cache           usage cache-relationship.
          04 filler          pic x(16).
         03  filler redefines 1filler.
          04 1group          usage group-relationship.

       01  1SYSTEM-LOGICAL-PROCESSOR-INFO     is typedef
                             usage
           2-system-logical-processor-inf.
       01  1PSYSTEM-LOGICAL-PROCESSOR-INF     is typedef
                             usage data-pointer.
       01  1-CPU-SET-INFORMATION-TYPE         is typedef usage uns-int.
       78  cpusetinformation                  value           0.

       01  CPU-SET-INFORMATION-TYPE           is typedef
                             usage
           1-cpu-set-information-type.
       01  PCPU-SET-INFORMATION-TYPE          is typedef
                             usage data-pointer.
       01  1-SYSTEM-CPU-SET-INFORMATION       is typedef.
        02 1size             usage uns-long.
        02 1type             usage
           cpu-set-information-type.
        02 filler            pic x(4).
        02 filler.
         03  1filler.
          04 cpuset.
           05  1id           usage uns-long.
           05  1group        usage uns-short.
           05  logicalprocessorindex          usage uns-char.
           05  coreindex     usage uns-char.
           05  lastlevelcacheindex            usage uns-char.
           05  numanodeindex usage uns-char.
           05  efficiencyclass                usage uns-char.
           05  filler.
            06 1filler.
             07 allflags     usage uns-char.
             07 filler       pic x(3).
            06 filler redefines 1filler.
             07 filler.
              08 parked.
               09 parked     usage uns-int.                 *> 1 Bit
              08 filler redefines parked.
               09 allocated  usage uns-int.                 *> 1 Bit
              08 filler redefines parked.
               09 allocatedtotargetprocess    usage uns-int.*> 1 Bit
              08 filler redefines parked.
               09 realtime   usage uns-int.                 *> 1 Bit
              08 filler redefines parked.
               09 reservedflags               usage uns-int.*> 4 Bits
           05  filler.
            06 2filler.
             07 reserved     usage uns-long.
            06 filler redefines 2filler.
             07 schedulingclass               usage uns-char.
             07 filler       pic x(7).
           05  filler        pic x(5).
           05  allocationtag usage uns-l-long.

       01  SYSTEM-CPU-SET-INFORMATION         is typedef
                             usage
           1-system-cpu-set-information.
       01  PSYSTEM-CPU-SET-INFORMATION        is typedef
                             usage data-pointer.
       01  1-SYSTEM-POOL-ZEROING-INFORMAT     is typedef.
        02 poolzeroingsupportpresent          usage uns-char.

       01  SYSTEM-POOL-ZEROING-INFORMATIO     is typedef
                             usage
           1-system-pool-zeroing-informat.
       01  PSYSTEM-POOL-ZEROING-INFORMATI     is typedef
                             usage data-pointer.
       01  1-SYSTEM-PROCESSOR-CYCLE-TIME-     is typedef.
        02 cycletime         usage uns-l-long.

       01  SYSTEM-PROCESSOR-CYCLE-TIME-IN     is typedef
                             usage
           1-system-processor-cycle-time-.
       01  PSYSTEM-PROCESSOR-CYCLE-TIME-I     is typedef
                             usage data-pointer.
       01  1-SYSTEM-SUPPORTED-PROCESSOR-A     is typedef.
        02 machine.
         03  machine         usage uns-int.                 *> 16 Bits
        02 filler redefines machine.
         03  kernelmode      usage uns-int.                 *> 1 Bit
        02 filler redefines machine.
         03  usermode        usage uns-int.                 *> 1 Bit
        02 filler redefines machine.
         03  1native         usage uns-int.                 *> 1 Bit
        02 filler redefines machine.
         03  1process        usage uns-int.                 *> 1 Bit
        02 filler redefines machine.
         03  wow64container  usage uns-int.                 *> 1 Bit
        02 filler redefines machine.
         03  reservedzero0   usage uns-int.                 *> 11 Bits
        02 filler            pic x(4).

       01  SYSTEM-SUPPORTED-PROCESSOR-ARC     is typedef
                             usage
           1-system-supported-processor-a.

* Warning, already defined name: __C_ASSERT__
       01  1-XSTATE-FEATURE  is typedef.
        02 offset            usage uns-long.
        02 1size             usage uns-long.

       01  XSTATE-FEATURE    is typedef       usage 1-xstate-feature.
       01  PXSTATE-FEATURE   is typedef       usage data-pointer.
       01  1-XSTATE-CONFIGURATION             is typedef.
        02 enabledfeatures   usage uns-l-long.
        02 enabledvolatilefeatures            usage uns-l-long.
        02 1size             usage uns-long.
        02 filler.
         03  1filler.
          04 controlflags    usage uns-long.
         03  filler redefines 1filler.
          04 filler.
           05  optimizedsave.
            06 optimizedsave usage uns-int.                 *> 1 Bit
           05  filler redefines optimizedsave.
            06 compactionenabled              usage uns-int.*> 1 Bit
           05  filler redefines optimizedsave.
            06 extendedfeaturedisable         usage uns-int.*> 1 Bit
           05  filler        pic x(4).
        02 features occurs 64                 usage xstate-feature.
        02 enabledsupervisorfeatures          usage uns-l-long.
        02 alignedfeatures   usage uns-l-long.
        02 allfeaturesize    usage uns-long.
        02 allfeatures occurs 64              usage uns-long.
        02 enableduservisiblesupervisorfe     usage uns-l-long.
        02 extendedfeaturedisablefeatures     usage uns-l-long.
        02 allnonlargefeaturesize             usage uns-long.
        02 spare             usage uns-long.

       01  XSTATE-CONFIGURATION               is typedef
                             usage
           1-xstate-configuration.
       01  PXSTATE-CONFIGURATION              is typedef
                             usage data-pointer.
       01  1-MEMORY-BASIC-INFORMATION         is typedef.
        02 baseaddress       usage data-pointer.
        02 allocationbase    usage data-pointer.
        02 allocationprotect usage uns-long.
        02 regionsize        usage uns-long.
        02 state             usage uns-long.
        02 protect           usage uns-long.
        02 1type             usage uns-long.

       01  MEMORY-BASIC-INFORMATION           is typedef
                             usage
           1-memory-basic-information.
       01  PMEMORY-BASIC-INFORMATION          is typedef
                             usage data-pointer.
       01  1-MEMORY-BASIC-INFORMATION32       is typedef.
        02 baseaddress       usage uns-long.
        02 allocationbase    usage uns-long.
        02 allocationprotect usage uns-long.
        02 regionsize        usage uns-long.
        02 state             usage uns-long.
        02 protect           usage uns-long.
        02 1type             usage uns-long.

       01  MEMORY-BASIC-INFORMATION32         is typedef
                             usage
           1-memory-basic-information32.
       01  PMEMORY-BASIC-INFORMATION32        is typedef
                             usage data-pointer.

       01  1-CFG-CALL-TARGET-INFO             is typedef.
        02 offset            usage uns-long.
        02 flags             usage uns-long.

       01  CFG-CALL-TARGET-INFO               is typedef
                             usage
           1-cfg-call-target-info.
       01  PCFG-CALL-TARGET-INFO              is typedef
                             usage data-pointer.
       01  1-MEM-ADDRESS-REQUIREMENTS         is typedef.
        02 loweststartingaddress              usage data-pointer.
        02 highestendingaddress               usage data-pointer.
        02 1alignment        usage uns-long.

       01  MEM-ADDRESS-REQUIREMENTS           is typedef
                             usage
           1-mem-address-requirements.
       01  PMEM-ADDRESS-REQUIREMENTS          is typedef
                             usage data-pointer.
       01  MEM-EXTENDED-PARAMETER-TYPE        is typedef usage uns-int.
       78  memextendedparameterinvalidtyp     value           0.
       78  memextendedparameteraddressreq     value           1.
       78  memextendedparameternumanode       value           2.
       78  memextendedparameterpartitionh     value           3.
       78  memextendedparameteruserphysic     value           4.
       78  memextendedparameterattributef     value           5.
       78  memextendedparameterimagemachi     value           6.
       78  memextendedparametermax            value           7.

       01  1MEM-EXTENDED-PARAMETER-TYPE       is typedef
                             usage
           mem-extended-parameter-type.
       01  PMEM-EXTENDED-PARAMETER-TYPE       is typedef
                             usage data-pointer.

       01  1-MEM-DEDICATED-ATTRIBUTE-TYPE     is typedef usage uns-int.
       78  memdedicatedattributereadbandw     value           0.
       78  memdedicatedattributereadlaten     value           1.
       78  memdedicatedattributewriteband     value           2.
       78  memdedicatedattributewritelate     value           3.
       78  memdedicatedattributemax           value           4.

       01  MEM-DEDICATED-ATTRIBUTE-TYPE       is typedef
                             usage
           1-mem-dedicated-attribute-type.
       01  PMEM-DEDICATED-ATTRIBUTE-TYPE      is typedef
                             usage data-pointer.
       01  MEM-SECTION-EXTENDED-PARAMETER     is typedef usage uns-int.
       78  memsectionextendedparameterinv     value           0.
       78  memsectionextendedparameteruse     value           1.
       78  memsectionextendedparameternum     value           2.
       78  memsectionextendedparametersig     value           3.
       78  memsectionextendedparametermax     value           4.

       01  1MEM-SECTION-EXTENDED-PARAMETE     is typedef
                             usage
           mem-section-extended-parameter.
       01  PMEM-SECTION-EXTENDED-PARAMETE     is typedef
                             usage data-pointer.
       01  1-ENCLAVE-CREATE-INFO-SGX          is typedef.
        02 secs occurs 4096  usage uns-char.

       01  ENCLAVE-CREATE-INFO-SGX            is typedef
                             usage
           1-enclave-create-info-sgx.
       01  PENCLAVE-CREATE-INFO-SGX           is typedef
                             usage data-pointer.
       01  1-ENCLAVE-INIT-INFO-SGX            is typedef.
        02 sigstruct occurs 1808              usage uns-char.
        02 reserved1 occurs 240               usage uns-char.
        02 einittoken occurs 304              usage uns-char.
        02 reserved2 occurs 1744              usage uns-char.

       01  ENCLAVE-INIT-INFO-SGX              is typedef
                             usage
           1-enclave-init-info-sgx.
       01  PENCLAVE-INIT-INFO-SGX             is typedef
                             usage data-pointer.
       01  1-ENCLAVE-CREATE-INFO-VBS          is typedef.
        02 flags             usage uns-long.
        02 ownerid occurs 32 usage uns-char.

       01  ENCLAVE-CREATE-INFO-VBS            is typedef
                             usage
           1-enclave-create-info-vbs.
       01  PENCLAVE-CREATE-INFO-VBS           is typedef
                             usage data-pointer.
       01  1-ENCLAVE-CREATE-INFO-VBS-BASI     is typedef.
        02 flags             usage uns-long.
        02 ownerid occurs 32 usage uns-char.

       01  ENCLAVE-CREATE-INFO-VBS-BASIC      is typedef
                             usage
           1-enclave-create-info-vbs-basi.
       01  PENCLAVE-CREATE-INFO-VBS-BASIC     is typedef
                             usage data-pointer.
       01  1-ENCLAVE-LOAD-DATA-VBS-BASIC      is typedef.
        02 pagetype          usage uns-long.

       01  ENCLAVE-LOAD-DATA-VBS-BASIC        is typedef
                             usage
           1-enclave-load-data-vbs-basic.
       01  PENCLAVE-LOAD-DATA-VBS-BASIC       is typedef
                             usage data-pointer.
       01  1-ENCLAVE-INIT-INFO-VBS-BASIC      is typedef.
        02 familyid occurs 16                 usage uns-char.
        02 imageid occurs 16 usage uns-char.
        02 enclavesize       usage uns-l-long.
        02 enclavesvn        usage uns-long.
        02 reserved          usage uns-long.
        02 filler.
         03  1filler.
          04 signatureinfohandle              usage data-pointer.
         03  filler redefines 1filler.
          04 unused          usage uns-l-long.

       01  ENCLAVE-INIT-INFO-VBS-BASIC        is typedef
                             usage
           1-enclave-init-info-vbs-basic.
       01  PENCLAVE-INIT-INFO-VBS-BASIC       is typedef
                             usage data-pointer.
       01  1-ENCLAVE-INIT-INFO-VBS            is typedef.
        02 1length           usage uns-long.
        02 threadcount       usage uns-long.

       01  ENCLAVE-INIT-INFO-VBS              is typedef
                             usage
           1-enclave-init-info-vbs.
       01  PENCLAVE-INIT-INFO-VBS             is typedef
                             usage data-pointer.
       01  PENCLAVE-TARGET-FUNCTION           is typedef
                             usage proc-pointer.
       01  LPENCLAVE-TARGET-FUNCTION          is typedef
                             usage proc-pointer.

       01  1-FILE-ID-128     is typedef.
        02 identifier occurs 16               usage uns-char.

       01  FILE-ID-128       is typedef       usage 1-file-id-128.
       01  PFILE-ID-128      is typedef       usage data-pointer.
       01  1-FILE-NOTIFY-INFORMATION          is typedef.
        02 nextentryoffset   usage uns-long.
        02 1action           usage uns-long.
        02 filenamelength    usage uns-long.
        02 filename occurs 1 usage uns-short.

       01  FILE-NOTIFY-INFORMATION            is typedef
                             usage
           1-file-notify-information.
       01  PFILE-NOTIFY-INFORMATION           is typedef
                             usage data-pointer.
       01  1-FILE-NOTIFY-EXTENDED-INFORMA     is typedef.
        02 nextentryoffset   usage uns-long.
        02 1action           usage uns-long.
        02 creationtime      usage large-integer.
        02 lastmodificationtime               usage large-integer.
        02 lastchangetime    usage large-integer.
        02 lastaccesstime    usage large-integer.
        02 allocatedlength   usage large-integer.
        02 filesize          usage large-integer.
        02 fileattributes    usage uns-long.
        02 reparsepointtag   usage uns-long.
        02 fileid            usage large-integer.
        02 parentfileid      usage large-integer.
        02 filenamelength    usage uns-long.
        02 filename occurs 1 usage uns-short.

       01  FILE-NOTIFY-EXTENDED-INFORMATI     is typedef
                             usage
           1-file-notify-extended-informa.
       01  PFILE-NOTIFY-EXTENDED-INFORMAT     is typedef
                             usage data-pointer.

       01  1-FILE-SEGMENT-ELEMENT             is typedef.
        02 2-FILE-SEGMENT-ELEMENT.
         03  pvoid64         usage int.
         03  filler          pic x(4).
        02 filler redefines 2-FILE-SEGMENT-ELEMENT.
         03  1alignment      usage uns-l-long.

       01  FILE-SEGMENT-ELEMENT               is typedef
                             usage
           1-file-segment-element.
       01  PFILE-SEGMENT-ELEMENT              is typedef
                             usage data-pointer.
       01  1-REPARSE-GUID-DATA-BUFFER         is typedef.
        02 reparsetag        usage uns-long.
        02 reparsedatalength usage uns-short.
        02 reserved          usage uns-short.
        02 filler            pic x(4).
        02 reparseguid       usage guid.
        02 genericreparsebuffer.
         03  databuffer occurs 1              usage uns-char.

       01  REPARSE-GUID-DATA-BUFFER           is typedef
                             usage
           1-reparse-guid-data-buffer.
       01  PREPARSE-GUID-DATA-BUFFER          is typedef
                             usage data-pointer.
       01  1-SCRUB-DATA-INPUT                 is typedef.
        02 1size             usage uns-long.
        02 flags             usage uns-long.
        02 maximumios        usage uns-long.
        02 objectid occurs 4 usage uns-long.
        02 reserved occurs 41                 usage uns-long.
        02 resumecontext occurs 1040          usage uns-char.

       01  SCRUB-DATA-INPUT  is typedef       usage 1-scrub-data-input.
       01  PSCRUB-DATA-INPUT is typedef       usage data-pointer.
       01  1-SCRUB-PARITY-EXTENT              is typedef.
        02 offset            usage l-long.
        02 1length           usage uns-l-long.

       01  SCRUB-PARITY-EXTENT                is typedef
                             usage
           1-scrub-parity-extent.
       01  PSCRUB-PARITY-EXTENT               is typedef
                             usage data-pointer.
       01  1-SCRUB-PARITY-EXTENT-DATA         is typedef.
        02 1size             usage uns-short.
        02 flags             usage uns-short.
        02 numberofparityextents              usage uns-short.
        02 maximumnumberofparityextents       usage uns-short.
        02 parityextents occurs 1             usage
           scrub-parity-extent.

       01  SCRUB-PARITY-EXTENT-DATA           is typedef
                             usage
           1-scrub-parity-extent-data.
       01  PSCRUB-PARITY-EXTENT-DATA          is typedef
                             usage data-pointer.
       01  1-SCRUB-DATA-OUTPUT                is typedef.
        02 1size             usage uns-long.
        02 flags             usage uns-long.
        02 1status           usage uns-long.
        02 errorfileoffset   usage uns-l-long.
        02 errorlength       usage uns-l-long.
        02 numberofbytesrepaired              usage uns-l-long.
        02 numberofbytesfailed                usage uns-l-long.
        02 internalfilereference              usage uns-l-long.
        02 resumecontextlength                usage uns-short.
        02 parityextentdataoffset             usage uns-short.
        02 filler            pic x(4).
        02 reserved occurs 9 usage uns-long.
        02 numberofmetadatabytesprocessed     usage uns-l-long.
        02 numberofdatabytesprocessed         usage uns-l-long.
        02 totalnumberofmetadatabytesinus     usage uns-l-long.
        02 totalnumberofdatabytesinuse        usage uns-l-long.
        02 databytesskippedduetonoallocat     usage uns-l-long.
        02 databytesskippedduetoinvalidru     usage uns-l-long.
        02 databytesskippedduetointegrity     usage uns-l-long.
        02 databytesskippedduetoregionbei     usage uns-l-long.
        02 databytesskippedduetolockconfl     usage uns-l-long.
        02 databytesskippedduetonoscrubda     usage uns-l-long.
        02 databytesskippedduetonoscrubno     usage uns-l-long.
        02 databytesscrubbed usage uns-l-long.
        02 resumecontext occurs 1040          usage uns-char.

       01  SCRUB-DATA-OUTPUT is typedef       usage
           1-scrub-data-output.
       01  PSCRUB-DATA-OUTPUT                 is typedef
                             usage data-pointer.
       01  1-SharedVirtualDiskSupportType     is typedef usage uns-int.
       78  sharedvirtualdisksunsupported      value           0.
       78  sharedvirtualdiskssupported        value           1.
       78  sharedvirtualdisksnapshotssupp     value           3.
       78  sharedvirtualdiskcdpsnapshotss     value           7.

       01  SharedVirtualDiskSupportType       is typedef
                             usage
           1-sharedvirtualdisksupporttype.
       01  1-SharedVirtualDiskHandleState     is typedef usage uns-int.
       78  sharedvirtualdiskhandlestateno     value           0.
       78  sharedvirtualdiskhandlestatefi     value           1.
       78  sharedvirtualdiskhandlestateha     value           3.

       01  SharedVirtualDiskHandleState       is typedef
                             usage
           1-sharedvirtualdiskhandlestate.
       01  1-SHARED-VIRTUAL-DISK-SUPPORT      is typedef.
        02 sharedvirtualdisksupport           usage
           sharedvirtualdisksupporttype.
        02 handlestate       usage
           sharedvirtualdiskhandlestate.

       01  SHARED-VIRTUAL-DISK-SUPPORT        is typedef
                             usage
           1-shared-virtual-disk-support.
       01  PSHARED-VIRTUAL-DISK-SUPPORT       is typedef
                             usage data-pointer.
       01  1-REARRANGE-FILE-DATA              is typedef.
        02 sourcestartingoffset               usage uns-l-long.
        02 targetoffset      usage uns-l-long.
        02 sourcefilehandle  usage data-pointer.
        02 1length           usage uns-long.
        02 flags             usage uns-long.

       01  REARRANGE-FILE-DATA                is typedef
                             usage
           1-rearrange-file-data.
       01  PREARRANGE-FILE-DATA               is typedef
                             usage data-pointer.
       01  1-SHUFFLE-FILE-DATA                is typedef.
        02 startingoffset    usage l-long.
        02 1length           usage l-long.
        02 flags             usage uns-long.

       01  SHUFFLE-FILE-DATA is typedef       usage
           1-shuffle-file-data.
       01  PSHUFFLE-FILE-DATA                 is typedef
                             usage data-pointer.
       01  1-NETWORK-APP-INSTANCE-EA          is typedef.
        02 appinstanceid     usage guid.
        02 csvflags          usage uns-long.

       01  NETWORK-APP-INSTANCE-EA            is typedef
                             usage
           1-network-app-instance-ea.
       01  PNETWORK-APP-INSTANCE-EA           is typedef
                             usage data-pointer.
       01  1-SYSTEM-POWER-STATE               is typedef usage uns-int.
       78  powersystemunspecified             value           0.
       78  powersystemworking                 value           1.
       78  powersystemsleeping1               value           2.
       78  powersystemsleeping2               value           3.
       78  powersystemsleeping3               value           4.
       78  powersystemhibernate               value           5.
       78  powersystemshutdown                value           6.
       78  powersystemmaximum                 value           7.

       01  SYSTEM-POWER-STATE                 is typedef
                             usage
           1-system-power-state.
       01  PSYSTEM-POWER-STATE                is typedef
                             usage data-pointer.
       78  poweractionnone                    value           0.
       78  poweractionreserved                value           1.
       78  poweractionsleep                   value           2.
       78  poweractionhibernate               value           3.
       78  poweractionshutdown                value           4.
       78  poweractionshutdownreset           value           5.
       78  poweractionshutdownoff             value           6.
       78  poweractionwarmeject               value           7.
       78  poweractiondisplayoff              value           8.

       01  POWER-ACTION      is typedef usage uns-int.
       01  PPOWER-ACTION     is typedef       usage data-pointer.
       01  1-DEVICE-POWER-STATE               is typedef usage uns-int.
       78  powerdeviceunspecified             value           0.
       78  powerdeviced0                      value           1.
       78  powerdeviced1                      value           2.
       78  powerdeviced2                      value           3.
       78  powerdeviced3                      value           4.
       78  powerdevicemaximum                 value           5.

       01  DEVICE-POWER-STATE                 is typedef
                             usage
           1-device-power-state.
       01  PDEVICE-POWER-STATE                is typedef
                             usage data-pointer.
       01  1-MONITOR-DISPLAY-STATE            is typedef usage uns-int.
       78  powermonitoroff                    value           0.
       78  powermonitoron                     value           1.
       78  powermonitordim                    value           2.

       01  MONITOR-DISPLAY-STATE              is typedef
                             usage
           1-monitor-display-state.
       01  PMONITOR-DISPLAY-STATE             is typedef
                             usage data-pointer.
       01  1-USER-ACTIVITY-PRESENCE           is typedef usage uns-int.
       78  poweruserpresent                   value           0.
       78  powerusernotpresent                value           1.
       78  poweruserinactive                  value           2.
       78  powerusermaximum                   value           3.
       78  poweruserinvalid                   value           0.

       01  USER-ACTIVITY-PRESENCE             is typedef
                             usage
           1-user-activity-presence.
       01  PUSER-ACTIVITY-PRESENCE            is typedef
                             usage data-pointer.
       01  EXECUTION-STATE   is typedef       usage uns-long.
       01  PEXECUTION-STATE  is typedef       usage data-pointer.
       78  lt-dont-care                       value           0.
       78  lt-lowest-latency                  value           1.

       01  LATENCY-TIME      is typedef usage uns-int.
       01  1-POWER-REQUEST-TYPE               is typedef usage uns-int.
       78  powerrequestdisplayrequired        value           0.
       78  powerrequestsystemrequired         value           1.
       78  powerrequestawaymoderequired       value           2.
       78  powerrequestexecutionrequired      value           3.

       01  POWER-REQUEST-TYPE                 is typedef
                             usage
           1-power-request-type.
       01  PPOWER-REQUEST-TYPE                is typedef
                             usage data-pointer.
       01  CM-Power-Data-s   is typedef.
        02 pd-size           usage uns-long.
        02 pd-mostrecentpowerstate            usage device-power-state.
        02 filler            pic x(4).
        02 pd-capabilities   usage uns-long.
        02 pd-d1latency      usage uns-long.
        02 pd-d2latency      usage uns-long.
        02 pd-d3latency      usage uns-long.
        02 pd-powerstatemapping occurs 7      usage device-power-state.
        02 pd-deepestsystemwake               usage system-power-state.

       01  CM-POWER-DATA     is typedef       usage cm-power-data-s.
       01  PCM-POWER-DATA    is typedef       usage data-pointer.
