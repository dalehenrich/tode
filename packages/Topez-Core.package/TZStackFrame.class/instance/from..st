initialization
from: frame

	method := frame at: 1.
	ipOffset := frame at: 2.
	frameOffset := frame at: 3.
	varContext := frame at: 4.
	saveProtectedMode := frame at: 5.
	markerOrException := frame at: 6.
	stackSelf := frame at: 8.
	argAndTempNames := frame at: 9.
	receiver := frame at: 10.
frame size > 10 ifTrue: [ 
	argsAnTemps := frame at: 11].
	