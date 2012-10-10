private
rawInSession: aBlock
    | proxy |
    proxy := [ aBlock value: self session ]
        on: GsRuntimeError
        do: [ :ex | ex return: ex tag asTopezProxy ].
    ^ proxy
        topezClient: self;
        signalNotifications