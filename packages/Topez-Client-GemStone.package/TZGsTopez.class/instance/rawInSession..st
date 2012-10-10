private
rawInSession: aBlock
    [ ^ aBlock value: self session ]
        on: GsRuntimeError
        do: [ :ex | 
            | proxy |
            proxy := ex tag asTopezProxy.
            proxy topezClient: self.
            proxy signalNotifications.
            ^ proxy ]