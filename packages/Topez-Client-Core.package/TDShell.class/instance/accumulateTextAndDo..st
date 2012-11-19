evaluator engine
accumulateTextAndDo: resultBlock
    self actionStack
        add:
            {inputStream.
            (self promptString).
            [ :input | 
            self exception: nil.
            [ resultBlock value: input ]
                on: TZTopezNotification
                do: [ :ex | 
                    self class enableDebugger
                        ifTrue: [ ex pass ]
                        ifFalse: [ self exception: ex exceptionProxy ].
                    ex resume ] ]}.
    inputStream := WriteStream on: String new.
    promptString := ''