evaluator engine
accumulateText: line
    | result |
    (line beginsWith: '%')
        ifFalse: [ 
            inputStream nextPutAll: line.
            ^ '' ].
    collectText := false.
    promptString := oldPromptString.
    result := accumulationAction value: inputStream.
    ^ Text string: result asString attribute: TextEmphasis italic