public - moving
move: aShape belowAlignFromLeft: anotherShape gap: anInteger
	^ aShape translateTo: anotherShape center 
		+ (0 @ ((anotherShape height + aShape height) / 2))
		- (((anotherShape width - aShape width) / 2) @ 0)
		+ (0 @ anInteger)