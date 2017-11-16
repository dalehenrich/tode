tests
testApplicationEnvironment
	| stonSignatureString objectSerializer |
	Transcript
		cr;
		show: self class name , '>>testApplicationEnvironment '.
	self
		todeShellDo: [ :shell | 
			shell session.	"login"
			objectSerializer := shell topez objectSerializer.
			stonSignatureString := shell topez evaluateSTONSmalltalk: self applicationExpression batchMode: true ].
	self assert: self applicationExpressionResult = (objectSerializer fromString: stonSignatureString)