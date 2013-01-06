as yet unclassified
topezServerProxy
  topezServerProxy
    ifNil: [ 
      | stonString transcriptOop topezOop resultArray topezServerOop topezClientOop |
      [ stonString := self session executeStringNB: 'TDTopezServer loginFrom: ' , self shell shellId asString ]
        on: TZTopezErrorNotification
        do: [ :ex | self error: 'Unable to log into server:' , ex exceptionProxy header printString ].
      resultArray := STON fromString: stonString.
      topezServerOop := resultArray at: 1.
      transcriptOop := resultArray at: 2.
      topezClientOop := resultArray at: 3.
      topezServerProxy := TZHeaderGemStone oop: topezServerOop.
      self session clientForwarderCache at: transcriptOop put: Transcript.
      self session clientForwarderCache at: topezClientOop put: self ].
  ^ topezServerProxy