accessing
updateFor: anElement trachelShape: trachelShape
	"Do nothing?"

	trachelShape isNil
		ifTrue: [ ^ self ].
	rectangle ifNotNil: [ trachelShape rectangle: rectangle ].
	ratio ifNotNil: [ trachelShape ratio: ratio ]