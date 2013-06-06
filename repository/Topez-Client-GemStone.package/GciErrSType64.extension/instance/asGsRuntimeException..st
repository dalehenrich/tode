*topez-client-gemstone
asGsRuntimeException: aGciSession
  | notificationClass |
  notificationClass := self isBreakpoint
    ifTrue: [ GsBreakpointNotification ]
    ifFalse: [ 
      self isCompileError
        ifTrue: [ GsCompileErrorNotification ]
        ifFalse: [ 
          number = 121000
            ifTrue: [ GsTopezCommandErrorNotification ]
            ifFalse: [ 
              self isHalt
                ifTrue: [ GsHaltNotification ]
                ifFalse: [ GsErrorNotification ] ] ] ].
  ^ notificationClass new
    gciErrSType: self;
    topez: aGciSession topez;
    yourself