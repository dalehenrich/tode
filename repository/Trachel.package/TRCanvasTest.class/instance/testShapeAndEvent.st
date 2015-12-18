events
testShapeAndEvent
	| shape t |
	shape := TRBoxShape new.
	t := false.
	shape when: TRMouseEnter do: [ :event | t := true ].
	self deny: t.
	shape announce: TRMouseEnter new.
	self assert: t