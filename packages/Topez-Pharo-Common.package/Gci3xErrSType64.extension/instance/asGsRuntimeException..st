*topez-pharo-common
asGsRuntimeException: aGciSession
  | notificationClass |
  notificationClass := ({ERR_Breakpoint.
  ERR_StackBreakpoint.
  ERR_CodeBreakpoint} includes: number)
    ifTrue: [ GsBreakpointNotification ]
    ifFalse: [ 
      number = ERR_CompilerError
        ifTrue: [ GsCompileErrorNotification ]
        ifFalse: [ 
          number = 121000
            ifTrue: [ GsTopezCommandErrorNotification ]
            ifFalse: [ 
              number = ERR_Halt
                ifTrue: [ GsHaltNotification ]
                ifFalse: [ GsErrorNotification ] ] ] ].
  ^ notificationClass new
    gciErrSType: self;
    topez: aGciSession topez;
    yourself