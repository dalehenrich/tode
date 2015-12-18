as yet unclassified
maxNextLineHeightFrom: ele for: elements
	| nextLineX maxNextLineHeight anElement |
	maxNextLineHeight := 0.
	nextLineX := self gapSize.
	anElement := ele.
	[ nextLineX < (self maxWidth rtValue: elements) ] whileTrue: [
		nextLineX := nextLineX + (self gapSize) + (anElement width).
		maxNextLineHeight := maxNextLineHeight max: (anElement height).	
		(anElement = elements last) ifFalse:  [anElement := (elements after: anElement) ].
		].
	^ maxNextLineHeight.
				