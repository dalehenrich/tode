evaluator engine
resetStack
  | actionArray |
  self actionStack isEmpty
    ifTrue: [ ^ self ].
  self actionStack removeFirst.
  actionArray := self stateStack removeFirst.
  promptString := actionArray at: 2.
  inputStream := actionArray at: 1