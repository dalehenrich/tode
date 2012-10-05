private
doInSession: aBlock
    [ ^ (aBlock value: self session) asTopezProxy ]
        on: GsRuntimeError
        do: [ :ex | 
            | proxy |
            proxy := ex tag asTopezProxy.
            proxy topezClient: self.
            proxy signalNotifications.
            ^ proxy ]