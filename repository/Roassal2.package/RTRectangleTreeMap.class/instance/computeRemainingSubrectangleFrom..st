utils
computeRemainingSubrectangleFrom: row
	(self currentSubrectangle isHorizontal)
		ifTrue: [^ self computeHorizontalRemainingSubrectangleFrom: row ]
		ifFalse: [ ^ self computeVerticalRemainingSubrectangleFrom: row ]