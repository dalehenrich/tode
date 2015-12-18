public - moving
moveAtTheBottomOfTheWindow: trachelShape

	| windowSize |
	trachelShape canvas ifNil: [ ^ self ].
	windowSize := trachelShape canvas extent.
	trachelShape translateTo: ((trachelShape width / 2) @ (windowSize y - (trachelShape height / 2)))