private
doNoError: aBlock
    ^ aBlock
        on: TZTopezErrorNotification
        do: [ :ex | self assert: false ]