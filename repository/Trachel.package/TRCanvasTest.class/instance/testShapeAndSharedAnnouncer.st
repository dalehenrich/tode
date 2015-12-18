events
testShapeAndSharedAnnouncer
	| shape1 shape2 t |
	shape1 := TRBoxShape new.
	shape2 := TRLineShape new.
	shape1 announcer: shape2 announcer.
	
	t := 0.
	shape1 when: TRMouseLeave do: [ :event | t := t + 1 ].
	shape2 when: TRMouseEnter do: [ :event | t := t + 10 ].

	shape1 announce: TRMouseEnter new.
	shape2 announce: TRMouseLeave new.
	self assert: t = 11