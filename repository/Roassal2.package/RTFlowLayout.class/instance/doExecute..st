hook
doExecute: elements 
	| x y maxLastLineHeight maxNextLineHeight  nextElement |
	
	x := self gapSize.
	y := self gapSize.
	maxLastLineHeight := 0.
	maxNextLineHeight := 0.
	nextElement := elements first.
	
 	elements do:
		[ :anElement | 
		(anElement = elements last) ifFalse:  [nextElement := (elements after: anElement)] ifTrue: [nextElement := anElement].	

		self isAlignBottom ifTrue: [ 
			translator translateBottomLeftOf: anElement to: x @ y.
			x := x + anElement width + (self gapSize).
			((x > (self maxWidth rtValue: elements)) | ((x + nextElement width) > (self maxWidth rtValue: elements) )) ifTrue:
				[ x := self gapSize.
				maxNextLineHeight := self maxNextLineHeightFrom: nextElement for: elements.
				y := y + (self gapSize) + maxNextLineHeight.
				maxNextLineHeight := 0.
				]
			].
		
		self isAlignCenter ifTrue: [ 
			translator translateCenterLeftOf: anElement to: x @ y.
					
			x := x + (anElement width) +(self gapSize).
			maxLastLineHeight := maxLastLineHeight max: (anElement height).
			((x > (self maxWidth rtValue: elements)) | ((x + nextElement width) > (self maxWidth rtValue: elements) )) ifTrue: 
				[ x := self gapSize.
				maxNextLineHeight := self maxNextLineHeightFrom: nextElement for: elements.
				y := y + (self gapSize) + (maxNextLineHeight / 2) + (maxLastLineHeight / 2).
				maxNextLineHeight := 0.
				maxLastLineHeight := 0.
				]
			].
		
		self isAlignTop ifTrue: [ 
			translator translateTopLeftOf: anElement to: (x @ y).
			x := x + anElement width + (self gapSize).
			maxLastLineHeight := maxLastLineHeight max: (anElement height ).
			( (x > (self maxWidth rtValue: elements)) | ((x + nextElement width) > (self maxWidth rtValue: elements) ))ifTrue: 
				[ x := self gapSize.
				y := y + (self gapSize) + maxLastLineHeight.
				maxLastLineHeight := 0. 
				]
		] 
	]