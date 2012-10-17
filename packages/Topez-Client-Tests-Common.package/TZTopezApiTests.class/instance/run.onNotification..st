private
run: doit onNotification: errorBlock
    ^ [ self topez run: doit ]
        on: TZTopezErrorNotification , TZTopezBreakpointNotification
        do: errorBlock