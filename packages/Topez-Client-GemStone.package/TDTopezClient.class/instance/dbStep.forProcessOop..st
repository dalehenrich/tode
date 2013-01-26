as yet unclassified
dbStep: level forProcessOop: processOop
  | result |
  [ result := self session stepWith: (TZHeaderGemStone oop: processOop) level: level ]
    on: TZTopezBreakpointNotification
    do: [ :ex | 
      | errorNumber |
      errorNumber := ex exceptionProxy number asTopezNative.
      errorNumber = 6002
        ifTrue: [ 
          "single step breakpoint ... as expected"
          ^ #'singleStep' ].
      errorNumber = 6005
        ifTrue: [ 
          "method breakpoint"
          ^ #'breakpoint' ].
      errorNumber = 6006
        ifTrue: [ 
          "return from method or block breakpoint ... as expected"
          ^ #'blockOrMethodReturn' ].
      self error: 'another breakpoint error number?' ].
  ^ result