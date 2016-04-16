login/logout
loginWith: aSessionDescription
	| todeServerCreationString jsonString resultArray |
	session := (GsDevKitSession new sessionDescription: aSessionDescription) session.
	[ todeServerCreationString := self todeServerCreationStringWithOptions: true.
	jsonString := self session executeString: todeServerCreationString ]
		on: GsGciError
		do: [ :ex | 
			self
				error:
					'Unable to log into server:' , ex description , 'with: '
						, todeServerCreationString printString ].
	resultArray := self objectSerializer fromString: jsonString.
	self halt