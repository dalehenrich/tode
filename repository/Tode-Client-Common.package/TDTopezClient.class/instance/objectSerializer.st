as yet unclassified
objectSerializer
	objectSerializer
		ifNil: [ objectSerializer := TodeObjectSerializer serializeUsing: TodeObjectSerializer defaultProtocolSignatureArray ].
	^ objectSerializer