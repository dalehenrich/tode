as yet unclassified
positionOnBorderHorizontal
	((self shapes bar position x - (self barWidth / 2)) < (self shapes start position x)) ifTrue: [ self shapes bar translateTo: (self shapes start position x + (self barWidth / 2))@(self shapes start position y)].
	((self shapes bar position x + (self barWidth / 2)) > (self shapes stop position x)) ifTrue: [ self shapes bar translateTo: (self shapes stop position x - (self barWidth / 2))@(self shapes start position  y)].