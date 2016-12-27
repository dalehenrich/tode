tests
testEvaluateSTONSmalltalk
	| stonString objectSerializer |
	self
		todeShellDo: [ :shell | 
			shell session.	"login"
			objectSerializer := shell topez objectSerializer.
			stonString := shell topez evaluateSTONSmalltalk: '1 + 1' batchMode: true ].
	self assert: 2 == (objectSerializer fromString: stonString)