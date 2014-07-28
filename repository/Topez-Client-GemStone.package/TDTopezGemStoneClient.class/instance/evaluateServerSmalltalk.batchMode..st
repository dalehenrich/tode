as yet unclassified
evaluateServerSmalltalk: smalltalkString batchMode: batchBool
	| transcriptOop result |
	batchBool
		ifFalse: [ transcriptOop := self session clientForwarderCache keyAtValue: Transcript ].
	[ 
	batchBool
		ifFalse: [ self session clientForwarderCache at: transcriptOop put: self shell console ].
	result := self session executeStringNB: smalltalkString envId: self environmentId.
	^ result isString
		ifTrue: [ result ]
		ifFalse: [ 
			"we're interested in side effects of Smalltalk code, not result"
			nil ] ]
		ensure: [ 
			(session notNil and: [ batchBool not ])
				ifTrue: [ self session clientForwarderCache at: transcriptOop put: Transcript ] ]