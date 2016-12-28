tests
testDebugSTONSmalltalk
	| stonString objectSerializer |
	self
		todeShellDo: [ :shell | 
			shell session.	"login"
			objectSerializer := shell topez objectSerializer.
			[ stonString := shell topez debugSTONSmalltalk: '1 + 1' batchMode: true ]
				on: GsBreakpointNotification
				do: [ :ex | 
					ex
						resume:
							{#logStack.
							(ex description)} ] ].
	self assert: 2 == (objectSerializer fromString: stonString)