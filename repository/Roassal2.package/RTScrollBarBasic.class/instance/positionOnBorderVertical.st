as yet unclassified
positionOnBorderVertical
	((self shapes bar position y - (self barHeight / 2)) < (self shapes start position y)) ifTrue: [ self shapes bar translateTo: (self shapes start position  x)@(self shapes start position y + (self barHeight / 2))].
	((self shapes bar position y + (self barHeight / 2)) > (self shapes stop position y)) ifTrue: [ self shapes bar translateTo: (self shapes start position  x)@(self shapes stop position y - (self barHeight / 2))].
