tests
testClassCreation
	| objectSerializer stonString |
	Transcript
		cr;
		show: self class name , '>>testClassCreation '.
	self
		todeShellDo: [ :shell | 
			shell session.	"login"
			objectSerializer := shell topez objectSerializer.
			stonString := shell topez
				evaluateSTONSmalltalkInServerContext:
					'(self createClassFrom: ' , self externalClassCreationString printString , ') name asString'
				batchMode: true ].
	self assert: (objectSerializer fromString: stonString) = 'UniqueExternalClassSubclass'