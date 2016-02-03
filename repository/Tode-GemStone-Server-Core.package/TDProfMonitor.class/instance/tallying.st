accessing
tallying
  | iv |
  traceObjCreation ifNil: [ ^ 'execTime' ].
  iv := traceObjCreation.
  (iv isKindOf: Boolean)
    ifTrue: [ 
      "pre 3.3"
      iv
        ifTrue: [ ^ 'objCreation' ] ]
    ifFalse: [ 
      "following must agree with VM C code in profileStatsWord() and code in setOptions:
    16r4  for elapsed time sampling, tally object faults
    16r8  for elapsed time sampling, tally page faults
    16r10  for elapsed time sampling, tally eden bytes used
    16r20  for elapsed time sampling, tally temp obj memory gc time
 "
      (iv bitAnd: 16r4) ~~ 0
        ifTrue: [ ^ 'objFaults' ].
      (iv bitAnd: 16r8) ~~ 0
        ifTrue: [ ^ 'pageFaults' ].
      (iv bitAnd: 16r10) ~~ 0
        ifTrue: [ ^ 'edenUsage' ].
      (iv bitAnd: 16r20) ~~ 0
        ifTrue: [ ^ 'gcTime' ].
      (iv bitAnd: 16r1) ~~ 0
        ifTrue: [ ^ 'objCreation' ] ].
  ^ 'execTime'	"assume just time sampling"