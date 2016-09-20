accessing
breakpointKind
  ^ breakpointKind
    ifNil: [ self setBreakpointKindFromErrorNumber: self gciErrSType number ]