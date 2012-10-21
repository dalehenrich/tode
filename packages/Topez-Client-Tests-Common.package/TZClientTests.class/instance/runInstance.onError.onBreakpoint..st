private
runInstance: doit onError: errorBlock onBreakpoint: breakpointBlock
    ^ [ self topez runInInstance: doit ]
        on: TZTopezErrorNotification , TZTopezBreakpointNotification
        do: [ :ex | 
            (ex isKindOf: TZTopezErrorNotification)
                ifTrue: [ errorBlock value: ex ]
                ifFalse: [ breakpointBlock value: ex ] ]