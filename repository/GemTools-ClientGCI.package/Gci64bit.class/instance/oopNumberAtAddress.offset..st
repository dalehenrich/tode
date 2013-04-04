oop access
oopNumberAtAddress: anExternalAddress offset: offset

	| x y |
	x := anExternalAddress unsignedLongAt: 1 + offset.
	y := anExternalAddress unsignedLongAt: 5 + offset.
	^y = 0
		ifTrue: [x]
		ifFalse: [y << 32 + x].
		