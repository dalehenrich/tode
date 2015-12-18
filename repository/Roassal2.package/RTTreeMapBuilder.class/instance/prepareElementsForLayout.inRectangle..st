layout-utils
prepareElementsForLayout: elms inRectangle: rec
	| elementsArea viewArea area |
	elms isEmpty ifTrue: [ ^ elms ].
	elementsArea := elms inject: 0 into: [ :s :e | 
		s + (weight rtValue: e model) ].
	elementsArea isZero ifTrue: [ self error: 'Invalid weight block' ].
	
	viewArea := rec width * rec height.
	area := [ :m | (viewArea * (self weight rtValue: m))/elementsArea ].
	elms do: [ :e|
		area := ((viewArea * (weight rtValue: e model))/elementsArea) asFloat.
		e attributes at: #area put: area. ].
	
	^ elms