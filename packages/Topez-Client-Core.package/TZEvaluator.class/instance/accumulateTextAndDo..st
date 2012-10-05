evaluator engine
accumulateTextAndDo: resultBlock
    inputStream := WriteStream on: String new.
    accumulationAction := [ :input | 
    self exception: nil.
    [ resultBlock value: input ]
        on: TZTopezNotification
        do: [ :ex | 
            self exception: ex exceptionProxy.
            ex resume ] ].
    collectText := true.
    oldPromptString := self promptString.
    promptString := ''