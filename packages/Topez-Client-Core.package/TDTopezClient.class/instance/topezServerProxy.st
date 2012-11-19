as yet unclassified
topezServerProxy
    topezServerProxy
        ifNil: [ 
            | stonString |
            [ stonString := self session executeStringNB: 'TDTopezServer default toString: TDTopezServer default level: 0' ]
                on: GsRuntimeError
                do: [ :ex | self error: 'Unable to log into server' ].
            topezServerProxy := (self readerClass on: stonString readStream) next ].
    ^ topezServerProxy