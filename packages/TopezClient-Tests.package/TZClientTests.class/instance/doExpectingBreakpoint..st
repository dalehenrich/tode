private
doExpectingBreakpoint: aBlock
    [ 
    aBlock value: self topez.
    self error: 'No breakpoint encountered' ]
        on: TZTopezErrorNotification , TZTopezBreakpointNotification
        do: [ :ex | 
            (ex isKindOf: TZTopezErrorNotification)
                ifTrue: [ self error: 'Unexpected error: ' , ex description ]
                ifFalse: [ ^ ex exceptionProxy ] ]