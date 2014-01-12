as yet unclassified
handleDebugExceptionsDuring: aBlock 
  "if you make changes here (like adding new return values), see TDDebugTool>>debugExceptionSymbols"

  | result |
  [ result := aBlock value ]
    on: GsBreakpointNotification , GsHaltNotification , GsErrorNotification
    do: [ :ex | 
      | errorNumber gciErrorClass |
      (ex isKindOf: GsErrorNotification)
        ifTrue: [ 
          "error occurred during execution"
          ^ #'error' ].
      gciErrorClass := self session library gciErrSTypeClass.
      errorNumber := ex errorNumber.
      errorNumber = 6002
        ifTrue: [ 
          "single step breakpoint ... as expected"
          ^ #'singleStep' ].
      errorNumber = 6005
        ifTrue: [ 
          "method breakpoint"
          ^ #'breakpoint' ].
      errorNumber = gciErrorClass err_Halt
        ifTrue: [ 
          "halt occurred during execution"
          ^ #'halt' ].
      errorNumber = 6006
        ifTrue: [ 
          "return from method or block breakpoint ... as expected"
          ^ #'blockOrMethodReturn' ].
      self error: 'another breakpoint error number?' ].
  ^ result