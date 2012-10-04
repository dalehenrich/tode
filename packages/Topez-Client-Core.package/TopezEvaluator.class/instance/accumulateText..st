evaluator engine
accumulateText: line
    | result |
    (line beginsWith: '%')
        ifFalse: [ 
            inputStream nextPutAll: line.
            ^ '' ].
    collectText := false.
    promptString := oldPromptString.
    ^ Text string: (accumulationAction value: inputStream) asString attribute: (TextColor color: Color blue)