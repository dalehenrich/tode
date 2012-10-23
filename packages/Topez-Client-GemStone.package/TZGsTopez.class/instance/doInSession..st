private
doInSession: aBlock
    | proxy |
    proxy := [ 
    | result |
    result := aBlock value: self session.
    STON fromString: result ]
        on: GsRuntimeError
        do: [ :ex | 
            proxy := ex tag asTopezProxy.
            ^ proxy
                topez: self;
                signalNotifications ].
    ^ proxy
        topez: self;
        signalNotifications