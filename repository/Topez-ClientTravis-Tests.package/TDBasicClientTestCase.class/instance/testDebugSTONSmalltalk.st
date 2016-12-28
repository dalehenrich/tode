tests
testDebugSTONSmalltalk
	| stonString objectSerializer |
	Transcript
		cr;
		show: self class name, '>>testDebugSTONSmalltalk '.
	self
		todeShellDo: [ :shell | 
			shell session.	"login"
			objectSerializer := shell topez objectSerializer.
			[ stonString := shell topez debugSTONSmalltalk: '1 + 1' batchMode: true ]
				on: GsRuntimeExceptionNotification
				do: [ :ex | 
					(ex isKindOf: GsBreakpointNotification)
						ifTrue: [ 
							ex
								resume:
									{#logStack.
									(ex description)} ]
						ifFalse: [ 
							Transcript
								cr;
								show: 'testDebugSTONSmalltalk: ' , ex printString.
							self assert: false ] ] ].
	self assert: 2 == (objectSerializer fromString: stonString)