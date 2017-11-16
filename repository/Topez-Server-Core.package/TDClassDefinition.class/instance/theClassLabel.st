as yet unclassified
theClassLabel
  | ch |
  ch := ''.
  self theClass
    ifNotNil: [ :tc | 
      tc classHistory
        ifNotNil: [ :classHistory | 
          classHistory size > 1
            ifTrue: [ ch := ' [' , (classHistory indexOf: tc) printString , ']' ] ] ].
  ^ self theClassName , ch