as yet unclassified
barWidth
 "This method is used to get the width of the bar from a scroll bar builder only, depending on the specificity of the bar"
	(self barSpecific = #scalable) ifTrue: [
		| max min s |
		
		max := self size -50.
		min := 10.
		
		s := (self size * (self view canvas extent x) / (self encompassingRectangleFromSpaceToPixel width) / self view canvas camera scale).
		
		(s > max) ifTrue: [ ^max ].
		(s < min) ifTrue: [ ^min ].
		^ s.
		] ifFalse: [ ^ self width]