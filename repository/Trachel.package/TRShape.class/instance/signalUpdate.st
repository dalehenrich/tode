actions
signalUpdate
	"Refresh the canvas"
	canvas ifNil: [ ^ self ].
	canvas signalUpdate