as yet unclassified
evaluateCommand: command
	| stonString transcriptOop |
	stonString := STON toString: command.
	transcriptOop := self session clientForwarderCache keyAtValue: Transcript.
	[ 
	self session clientForwarderCache at: transcriptOop put: self shell console.
	^ self session
		executeStringExpectingStringNB:
			'(' , self todeServerAccessString , ' for: ' , self shell shellId asString , ') evaluateSTONCommand:'
				, stonString printString
		envId: self environmentId ]
		ensure: [ session ifNotNil: [ self session clientForwarderCache at: transcriptOop put: Transcript] ]