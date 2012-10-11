evaluator engine
accumulateText: line
    | result |
    (line beginsWith: '%')
        ifFalse: [ 
            inputStream nextPutAll: line.
            ^ '' ].
    collectText := false.
    promptString := oldPromptString.
    ^ (self topez recordHistory: (accumulationAction value: inputStream)) renderText