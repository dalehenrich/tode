accessing
accumulateText: line
  | actionArray result stream |
  (line isNil or: [ line beginsWith: '%' ])
    ifFalse: [ 
      scriptInputStream
        nextPutAll: line;
        cr.
      ^ '' ].
  actionArray := self scriptActionStack removeLast.
  stream := scriptInputStream.
  scriptInputStream := actionArray at: 1.
  accumulateScriptText := actionArray at: 2.
  ^ (actionArray at: 3) value: stream contents value: objIn value