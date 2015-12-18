as yet unclassified
barHeight
 "This method is used to get the height of the bar from a scroll bar builder only, depending on the specificity of the bar"
	(self barSpecific = #scalable) ifTrue: [
		| max min s |
		
		max := self size -50.
		min := 10.
			
		s := (self size * (self view canvas extent y) / (self encompassingRectangleFromSpaceToPixel height) / self view canvas camera scale).
		
		(s > max) ifTrue: [ ^max ].
		(s < min) ifTrue: [ ^min ].
		^ s.
		
		] ifFalse: [ ^ self width]