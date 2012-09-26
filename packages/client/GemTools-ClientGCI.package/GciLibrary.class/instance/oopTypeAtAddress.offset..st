oop access
oopTypeAtAddress: anExternalAddress offset: offset
	"Zero-based offset"

	^self oopTypeFromInteger: (self oopNumberAtAddress: anExternalAddress offset: offset).
