login/logout
loginWith: aSessionDescription
	| todeServerCreationString jsonString resultArray todeServerOop transcriptOopType authorId |
	self sessionDescription: aSessionDescription.
	session := (GsDevKitSession new sessionDescription: aSessionDescription) session.
	session clientObj: self.
	[ todeServerCreationString := self todeServerCreationStringWithOptions: true.
	jsonString := self session executeString: todeServerCreationString ]
		on: TDErrorNotification
		do: [ :ex | 
			self
				error:
					'Unable to log into server:' , ex description , 'with: '
						, todeServerCreationString printString ].
	resultArray := self objectSerializer fromString: jsonString.
	todeServerOop := resultArray at: 1.
	todeClientOopType := (resultArray at: 3) gciResultToGsOopType: self session.
	todeServerOopType := todeServerOop gciResultToGsOopType: self session.
	(resultArray at: 2)
		ifNotNil: [ :transcriptOop | 
			transcriptOopType := transcriptOop gciResultToGsOopType: self session.
			self session registerClientObjectForwarderOopType: transcriptOopType for: Transcript ].
	self session registerClientObjectForwarderOopType: todeClientOopType for: self.
	resultArray size > 3
		ifTrue: [ | protocolSignature objSerializer serverApiVersionString |
			protocolSignature := resultArray at: 4.
			objSerializer := TodeObjectSerializer serializeUsing: protocolSignature.
			self session
				send: #serializeObjectsUsing:version:
				to: todeServerOopType
				withArgs: objSerializer protocolSignatureArray.
			self objectSerializer: objSerializer.
			serverApiVersionString := resultArray size > 4
				ifTrue: [ resultArray at: 5 ]
				ifFalse: [ '1.0.0' ].
			self serverApiVersion: serverApiVersionString asMetacelloVersionNumber ].
	authorId := self sessionDescription authorId.
	authorId isEmpty
		ifTrue: [ authorId := Author fullName ].
	self session send: #authorInitials: to: todeServerOopType withArgs: {authorId}