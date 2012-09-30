private
doNoError: aBlock
    ^ aBlock
        on: TZTopezErrorNotification , TZTopezBreakpointNotification
        do: [ :ex | self error: 'Unexpected error or breakpoint: ' , ex description ]