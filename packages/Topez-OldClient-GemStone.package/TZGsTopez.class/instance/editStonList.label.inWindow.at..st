as yet unclassified
editStonList: aStonCollectionOfObjectsString label: labelString inWindow: windowIdOrNil at: windowLocation
    | proxy |
    [ proxy := (self readerClass on: aStonCollectionOfObjectsString readStream) next ]
        on: GsRuntimeError
        do: [ :ex | 
            proxy := ex tag asTopezProxy.
            ^ proxy
                topez: self;
                signalNotifications ].
    self
        editList: proxy
        label: labelString
        inWindow: windowIdOrNil
        at: windowLocation