testing
isBreakpoint
  ^ {(self class err_Breakpoint).
  (self class err_StackBreakpoint).
  (self class err_CodeBreakpoint)} includes: self number