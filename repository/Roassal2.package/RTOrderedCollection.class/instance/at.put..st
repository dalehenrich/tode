accessing
at: index put: object
	| r |
	r := super at: index put: object.
	addCallback rtValue: object.
	^ r