as yet unclassified
topezServerProxy
  topezServerProxy
    ifNil: [ 
      | stonString transcriptOopType topezOop resultArray topezServerOop topezClientOopType |
      [ 
      stonString := self session
        executeStringExpectingStringNB: self todeServerCreationString
        envId: self environmentId ]
        on: TZTopezErrorNotification
        do: [ :ex | self error: 'Unable to log into server:' , ex exceptionProxy header printString ].
      resultArray := STON fromString: stonString.
      topezServerOop := resultArray at: 1.
      transcriptOopType := self session asOopType: (resultArray at: 2).
      topezClientOopType := self session asOopType: (resultArray at: 3).
      topezServerProxy := TZHeaderGemStone oop: topezServerOop.
      self session clientForwarderCache at: transcriptOopType put: Transcript.
      self session clientForwarderCache at: topezClientOopType put: self ].
  ^ topezServerProxy