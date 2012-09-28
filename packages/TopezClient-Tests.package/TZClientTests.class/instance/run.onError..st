private
run: doit onError: errorBlock
    ^ [ self topez run: doit ]
        on: TZTopezErrorNotification
        do: errorBlock