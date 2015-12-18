public - moving
move: aShape onTheRightBelowOf: anotherShape
	^ aShape translateTo: anotherShape center + (((anotherShape extent/2) rounded) + (aShape extent/2 rounded))