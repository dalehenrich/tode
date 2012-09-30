private
doNoError: aBlock
    ^ aBlock
        on: TZTopezErrorNotification , TZTopezBreakpointNotification
        do: [ :ex | self assert: false ]