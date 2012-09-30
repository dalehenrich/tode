private
doExpectingBreakpoint: aBlock
    [ 
    aBlock value: self topez.
    self assert: false	"no breakpoint" ]
        on: TZTopezErrorNotification , TZTopezBreakpointNotification
        do: [ :ex | 
            (ex isKindOf: TZTopezErrorNotification)
                ifTrue: [ self assert: false	"no breakpoint" ]
                ifFalse: [ ^ ex exceptionProxy ] ]