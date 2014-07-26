as yet unclassified
evaluateCommand: command batchMode: batchBool
	| stonString transcriptOop |
	stonString := STON toString: command.
	batchBool
		ifFalse: [ transcriptOop := self session clientForwarderCache keyAtValue: Transcript ].
	[ 
	batchBool
		ifFalse: [ self session clientForwarderCache at: transcriptOop put: self shell console ].
	^ self session
		executeStringExpectingStringNB:
			'(' , self todeServerAccessString , ' for: ' , self shell shellId asString , ') evaluateSTONCommand:'
				, stonString printString
		envId: self environmentId ]
		ensure: [ (session notNil and: [ batchBool not ]) ifTrue: [ self session clientForwarderCache at: transcriptOop put: Transcript ] ]