as yet unclassified
evaluateSTONSmalltalk: smalltalkSource variableBindings: variableBindings batchMode: batchBool
	| transcriptOop |
	batchBool
		ifFalse: [ transcriptOop := self session clientForwarderCache keyAtValue: Transcript ifAbsent: [  ] ].
	[ 
	(transcriptOop notNil and: [ batchBool not ])
		ifTrue: [ self session clientForwarderCache at: transcriptOop put: self shell console ].
	^ self session
		executeStringExpectingStringNB:
			'(' , self todeServerAccessString , ' for: ' , self shell shellId asString , ') evaluateSTONSmalltalk:'
				, smalltalkSource printString , ' variableBindings: ' , (self objectSerializer toString: variableBindings) printString
		envId: self environmentId ]
		ensure: [ 
			(session notNil and: [ transcriptOop notNil and: [ batchBool not ] ])
				ifTrue: [ self session clientForwarderCache at: transcriptOop put: Transcript ] ]