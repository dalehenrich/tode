callback
testHasCallback
	| s |
	s := TRBoxShape new.
	self deny: s hasEventCallback.
	s when: TRMouseClick do: [ :e | ].
	self assert: s hasEventCallback.