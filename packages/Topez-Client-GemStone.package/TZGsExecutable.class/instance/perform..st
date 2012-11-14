accessing
perform: actionBlock
    | rawOopType |
    [ rawOopType := actionBlock value ]
        on: GsRuntimeError
        do: [ :ex | 
            ^ ex tag asTopezProxy
                topez: self;
                signalNotifications ].
    ^ self performTransformOn: rawOopType