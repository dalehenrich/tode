evaluator engine
resetStack
    | actionArray |
    self actionStack isEmpty
        ifTrue: [ ^ self ].
    actionArray := self actionStack removeFirst.
    promptString := actionArray at: 2.
    inputStream := actionArray at: 1