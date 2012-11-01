evaluator engine
accumulateText: line
    | actionArray result stream |
    (line isNil or: [ line beginsWith: '%' ])
        ifFalse: [ 
            inputStream
                nextPutAll: line;
                cr.
            ^ '' ].
    actionArray := self actionStack removeLast.
    stream := inputStream.
    promptString := actionArray at: 2.
    inputStream := actionArray at: 1.
    ^ (self topez recordHistory: ((actionArray at: 3) value: stream)) renderText