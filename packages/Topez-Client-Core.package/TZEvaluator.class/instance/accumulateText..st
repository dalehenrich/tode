evaluator engine
accumulateText: line
    | actionArray result stream |
    (line notNil and: [ line beginsWith: '%' ])
        ifFalse: [ 
            inputStream nextPutAll: line.
            ^ '' ].
    actionArray := self actionStack removeLast.
    stream := inputStream.
    promptString := actionArray at: 2.
    inputStream := actionArray at: 1.
    ^ (self topez recordHistory: ((actionArray at: 3) value: stream)) renderText