actions
signalUpdate
	"Signal that the canvas should be refreshed"
	"Do nothing if I have no shapes added"

	shapeAndOffsets ifEmpty: [ ^ self ].
	self firstShape signalUpdate