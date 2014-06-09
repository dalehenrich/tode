initialization
remoteBreakpointsEnabled
  EnableRemoteBreakpoints == nil
    ifTrue: [ EnableRemoteBreakpoints := false ].
  ^ EnableRemoteBreakpoints