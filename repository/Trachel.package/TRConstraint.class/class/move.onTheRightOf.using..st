public - moving
move: aShape onTheRightOf: anotherShape using: translator
	^ translator translate: aShape to: anotherShape center + ((((anotherShape width / 2) rounded) + (aShape width/2 rounded)) @ 0)