accessing
accumulateText: line onEval: aBlock
  | actionArray result stream |
  (line isNil or: [ line beginsWith: '%' ])
    ifFalse: [ 
      scriptInputStream
        nextPutAll: line;
        cr.
      ^ self ].
  actionArray := self scriptActionStack removeLast.
  stream := scriptInputStream.
  scriptInputStream := actionArray at: 1.
  accumulateScriptText := actionArray at: 2.
  result := (actionArray at: 3) value: stream contents value: objIn value.
  aBlock value: result