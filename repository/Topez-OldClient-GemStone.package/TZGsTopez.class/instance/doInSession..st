private
doInSession: aBlock
    | proxy |
    proxy := [ 
    | result |
    result := aBlock value: self session.
    (self readerClass on: result readStream) next ]
        on: GsRuntimeError
        do: [ :ex | 
            proxy := ex tag asTopezProxy.
            ^ proxy
                topez: self;
                signalNotifications ].
    ^ proxy
        topez: self;
        signalNotifications