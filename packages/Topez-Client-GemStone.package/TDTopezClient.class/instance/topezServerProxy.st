as yet unclassified
topezServerProxy
    topezServerProxy
        ifNil: [ 
            | stonString transcriptOop |
            [ stonString := self session executeStringNB: 'TDTopezServer default toString: TDTopezServer default level: 0' ]
                on: GsRuntimeError
                do: [ :ex | self error: 'Unable to log into server' ].
            topezServerProxy := (self readerClass on: stonString readStream) next.
            transcriptOop := self session registerClientObjectForwarder: Transcript.
            (TZGsBlockSend new
                topez: self;
                blockSource:
                        [ :oop | Smalltalk at: #'TranscriptProxy' ifPresent: [ :cl | cl registerTranscriptClientForwarder: oop ] ] printString;
                transform: #'raw' -> nil) value: transcriptOop ].
    ^ topezServerProxy