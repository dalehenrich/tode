public - moving
move: aShape below: anotherShape using: translator
	^ translator translate: aShape to: anotherShape center + (0 @ ((anotherShape height + aShape height) / 2)) 