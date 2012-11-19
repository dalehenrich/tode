as yet unclassified
editStonElement: aStonTZElement edittingCode: edittingCode stylingActive: stylingActive label: labelString inWindow: windowIdOrNil at: windowLocation
    | proxy |
    [ proxy := (self readerClass on: aStonTZElement readStream) next ]
        on: GsRuntimeError
        do: [ :ex | 
            proxy := ex tag asTopezProxy.
            ^ proxy
                topez: self;
                signalNotifications ].
    self
        editElement: proxy
        edittingCode: edittingCode
        stylingActive: stylingActive
        label: labelString
        inWindow: windowIdOrNil
        at: windowLocation