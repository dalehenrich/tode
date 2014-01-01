as yet unclassified
topezServerProxy
	topezServerProxy
		ifNil: [ 
			| stonString transcriptOopType topezOop resultArray topezServerOop topezClientOopType |
			[ stonString := self session executeStringExpectingStringNB: self todeServerCreationString envId: self environmentId ]
				on: GsErrorNotification
				do: [ :ex | self error: 'Unable to log into server:' , ex description ].
			resultArray := STON fromString: stonString.
			topezServerOop := resultArray at: 1.
			transcriptOopType := self session asOopType: (resultArray at: 2).
			topezClientOopType := self session asOopType: (resultArray at: 3).
			topezServerProxy := self session asOopType: topezServerOop.
			self session clientForwarderCache at: transcriptOopType put: Transcript.
			self session clientForwarderCache at: topezClientOopType put: self.
			self session rawReceiverNB: topezServerProxy perform: #authorInitials: withArgs: {(Author fullName)}.
			self sessionDescription backupDirectory isEmpty not
				ifTrue: [ 
					[ 
					self session
						rawReceiverNB: topezServerProxy
						perform: #backupDirectory:
						withArgs: {(self sessionDescription backupDirectory)} ]
						on: Error
						do: [ :ignored |  ] ].
			TZGemStoneProxyBehavior new
				topez: self;
				allGlobalNames;
				yourself ].
	^ topezServerProxy