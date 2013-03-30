initialize-release
initialize
  "self initialize"

  super initialize.
  err_CompilerError := 1001.
  err_Halt := 2709.
  err_Error := 2710.
  err_Breakpoint := 6002.
  err_CodeBreakpoint := 6005.
  err_StackBreakpoint := 6006