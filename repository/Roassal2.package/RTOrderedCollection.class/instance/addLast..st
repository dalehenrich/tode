adding
addLast: object
	| r |
	r := super addLast: object.
	addCallback rtValue: object.
	^ r