public - moving
move: aShape onTheRightOf: anotherShape
	^ aShape translateTo: anotherShape center + ((((anotherShape width/2) rounded) + (aShape width/2 rounded)) @ 0)