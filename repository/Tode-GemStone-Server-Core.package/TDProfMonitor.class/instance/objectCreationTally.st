testing
objectCreationTally
  ^ (traceObjCreation isKindOf: Boolean)
    ifTrue: [ 
      "pre-3.3"
      traceObjCreation ]
    ifFalse: [ (traceObjCreation bitAnd: 1) ~~ 0 ]