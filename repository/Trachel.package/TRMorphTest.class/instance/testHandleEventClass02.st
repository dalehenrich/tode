event
testHandleEventClass02

	| t |
	t := TRBoxShape new.
	self deny: (t announcer handleEventClass: TRMouseClick).
	t when: TRMouseClick do: [ :evt | ].
	self assert: (t announcer handleEventClass: TRMouseClick superclass).
	self deny: (t announcer handleEventClass: TRMouseClick new).