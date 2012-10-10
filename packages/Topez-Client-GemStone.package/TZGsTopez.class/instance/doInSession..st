private
doInSession: aBlock
    | proxy |
    proxy := [ 
    | result |
    result := aBlock value: self session.
    STON fromString: result ]
        on: GsRuntimeError
        do: [ :ex | ex return: ex tag asTopezProxy ].
    ^ proxy
        topez: self;
        signalNotifications