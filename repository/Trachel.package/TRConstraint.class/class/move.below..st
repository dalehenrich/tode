public - moving
move: aShape below: anotherShape
	^ aShape translateTo: anotherShape center + (0 @ ((anotherShape height + aShape height) / 2)) 