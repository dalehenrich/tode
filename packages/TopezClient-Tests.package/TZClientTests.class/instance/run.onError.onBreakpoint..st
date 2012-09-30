private
run: doit onError: errorBlock onBreakpoint: breakpointBlock
    ^ [ self topez run: doit ]
        on: TZTopezErrorNotification , TZTopezBreakpointNotification
        do: [ :ex | 
            (ex isKindOf: TZTopezErrorNotification)
                ifTrue: [ errorBlock value: ex ]
                ifFalse: [ breakpointBlock value: ex ] ]