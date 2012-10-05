evaluator engine
accumulateText: line
    | result |
    (line beginsWith: '%')
        ifFalse: [ 
            inputStream nextPutAll: line.
            ^ '' ].
    collectText := false.
    promptString := oldPromptString.
    ^ (accumulationAction value: inputStream) renderText