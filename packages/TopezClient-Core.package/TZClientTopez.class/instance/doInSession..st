private
doInSession: aBlock
    [ 
    | result |
    result := aBlock value: self session.
    ^ STON fromString: result ]
        on: GsRuntimeError
        do: [ :ex | 
            | proxy |
            proxy := ex tag asTopezProxy.
            proxy signalNotifications.
            ^ proxy ]