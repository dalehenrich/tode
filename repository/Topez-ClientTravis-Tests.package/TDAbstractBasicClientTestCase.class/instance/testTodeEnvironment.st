tests
testTodeEnvironment
	| stonSignatureString objectSerializer |
	Transcript
		cr;
		show: self class name , '>>testTodeEnvironment '.
	self
		todeShellDo: [ :shell | 
			shell session.	"login"
			objectSerializer := shell topez objectSerializer.
			stonSignatureString := shell topez evaluateSTONSmalltalk: 'TDSessionDescription new' batchMode: true ].
	self assert: TDSessionDescription == (objectSerializer fromString: stonSignatureString) class