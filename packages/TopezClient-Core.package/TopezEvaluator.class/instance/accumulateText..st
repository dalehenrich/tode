evaluating
accumulateText: line
    (line beginsWith: '%')
        ifFalse: [ 
            inputStream nextPutAll: line.
            ^ '' ].
    collectText := false.
    promptString := oldPromptString.
    ^ accumulationAction value: inputStream