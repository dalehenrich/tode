multicolor
testMultiColor

	| n |
	n :=  RTMultiLinearColor new
		colors: (Array with: Color white with: Color black).
	self assert: (n level: 0) = Color white. 
	self assert: (n level: 1.0) = Color black.
	self assert: (n level: 0.5) = (Color r: 0.5 g: 0.5 b: 0.5).