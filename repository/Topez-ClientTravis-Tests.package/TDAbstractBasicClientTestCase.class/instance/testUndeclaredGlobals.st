tests
testUndeclaredGlobals
	| stonSignatureString objectSerializer |
	Transcript
		cr;
		show: self class name , '>>testUndeclaredGlobals '.
	self
		todeShellDo: [ :shell | 
			shell session.	"login"
			objectSerializer := shell topez objectSerializer.
			stonSignatureString := shell topez evaluateSTONSmalltalk: 'UndeclaredGlobalGlassXXX class name' batchMode: true ].
	self assert: self undeclaredGlobalReferenceClassName = (objectSerializer fromString: stonSignatureString)