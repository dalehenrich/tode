evaluating
accumulateTextAndDo: resultBlock
    inputStream := WriteStream on: String new.
    accumulationAction := [ :input | 
    self context: nil.
    [ resultBlock value: input ]
        on: TZTopezNotification
        do: [ :ex | 
            self context: ex exceptionProxy context.
            ex resume ] ].
    collectText := true.
    oldPromptString := self promptString.
    promptString := ''