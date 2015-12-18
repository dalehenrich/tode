public - moving
move: aShape onTheBottomLeftOf: anotherShape
	^ aShape translateTo: anotherShape center - ((((anotherShape width/2) rounded) + (aShape width/2 rounded)) @ ((anotherShape height/ -2) rounded))