accessing
objectSerializer
	objectSerializer
		ifNil: [ objectSerializer := TodeObjectSerializer
				serializeUsing: TodeObjectSerializer defaultProtocolSignatureArray ].
	^ objectSerializer