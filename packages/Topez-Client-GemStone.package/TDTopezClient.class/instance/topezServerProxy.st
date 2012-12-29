as yet unclassified
topezServerProxy
  topezServerProxy
    ifNil: [ 
      | stonString transcriptOop topezOop |
      [ 
      stonString := self session
        executeStringNB:
          '(TDTopezServer for: ' , self shell shellId asString , ') toString: (TDTopezServer for: ' , self shell shellId asString
            , ') level: 0' ]
        on: TZTopezErrorNotification
        do: [ :ex | self error: 'Unable to log into server:' , ex exceptionProxy header printString ].
      topezServerProxy := (self readerClass on: stonString readStream) next.
      transcriptOop := self session registerClientObjectForwarder: Transcript.
      topezOop := self session registerClientObjectForwarder: self.
      (TZGsBlockSend new
        topez: self;
        blockSource:
            [ :transcript :topezClient :topezServer | 
              Smalltalk at: #'TranscriptProxy' ifPresent: [ :cl | cl registerTranscriptClientForwarder: transcript ].
              topezServer topezClientForwarder: topezClient ] printString;
        transform: #'raw' -> nil) value: transcriptOop value: topezOop value: topezServerProxy ].
  ^ topezServerProxy