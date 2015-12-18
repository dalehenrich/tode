events
testCanvasAndEvent

	| c f |
	c := TRCanvas new.
	f := false.
	c when: TRMouseClick do: [ :event | f := true ].
	self deny: f.
	c announce: TRMouseMove.
	self deny: f.
	c announce: TRMouseClick.
	self assert: f