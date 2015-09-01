as yet unclassified
topezServerProxy
	topezServerProxy
		ifNil: [ 
			| jsonString transcriptOopType resultArray topezServerOop topezClientOopType |
			[ jsonString := self session executeStringExpectingStringNB: self todeServerCreationString envId: self environmentId ]
				on: GsErrorNotification
				do: [ :firstEx | 
					"try again with no options, in case using old version of tode ... eventually get rid of this"
					[ 
					jsonString := self session
						executeStringExpectingStringNB: (self todeServerCreationStringWithOptions: false)
						envId: self environmentId ]
						on: GsErrorNotification
						do: [ :ex | self error: 'Unable to log into server:' , ex description ] ].
			resultArray := self objectSerializer fromString: jsonString.
			topezServerOop := resultArray at: 1.
			topezClientOopType := self session asOopType: (resultArray at: 3).
			topezServerProxy := self session asOopType: topezServerOop.
			(resultArray at: 2)
				ifNotNil: [ :transcriptOop | 
					transcriptOopType := self session asOopType: transcriptOop.
					self session clientForwarderCache at: transcriptOopType put: Transcript ].
			self session clientForwarderCache at: topezClientOopType put: self.
			resultArray size > 3
				ifTrue: [ 
					| protocolSignature objSerializer serverApiVersionString |
					protocolSignature := resultArray at: 4.
					objSerializer := TodeObjectSerializer serializeUsing: protocolSignature.
					self session
						rawReceiverNB: topezServerProxy
						perform: #serializeObjectsUsing:version:
						withArgs: objSerializer protocolSignatureArray.
					self objectSerializer: objSerializer.
					serverApiVersionString := resultArray size > 4
						ifTrue: [ resultArray at: 5 ]
						ifFalse: [ '1.0.0' ].
					self serverApiVersion: serverApiVersionString asMetacelloVersionNumber ].
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
			self sessionDescription snapshotDirectory isEmpty not
				ifTrue: [ 
					[ 
					self session
						rawReceiverNB: topezServerProxy
						perform: #snapshotDirectory:
						withArgs: {(self sessionDescription snapshotDirectory)} ]
						on: Error
						do: [ :ignored |  ] ].
			TZGemStoneProxyBehavior new
				topez: self;
				allGlobalNames;
				yourself ].
	^ topezServerProxy