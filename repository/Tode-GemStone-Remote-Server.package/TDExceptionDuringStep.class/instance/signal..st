signaling
signal: errorNumber
  breakpointKind := errorNumber = 6002
    ifTrue: [ 
      "single step breakpoint ... as expected"
      #'singleStep' ]
    ifFalse: [ 
      errorNumber = 6005
        ifTrue: [ 
          "method breakpoint"
          ^ #'breakpoint' ]
        ifFalse: [ 
          errorNumber = 6006
            ifTrue: [ 
              "return from method or block breakpoint ... as expected"
              #'blockOrMethodReturn' ]
            ifFalse: [ 
              errorNumber = 2318
                ifTrue: [ 
                  "halt occurred during execution"
                  #'halt' ]
                ifFalse: [ #'error' ] ] ] ].
  ^ self _signalWith: nil