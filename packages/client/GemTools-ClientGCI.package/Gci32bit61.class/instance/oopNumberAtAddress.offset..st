oop access
oopNumberAtAddress: anExternalAddress offset: offset

	^anExternalAddress unsignedLongAt: 1 + offset.
