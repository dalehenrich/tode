utility
maxNextLineWidthFrom: ele for: elements
	| nextLineY maxNextLineWidth anElement |
	anElement := ele.
	maxNextLineWidth := 0.
	nextLineY := self gapSize.
	[ nextLineY < (self maxWidth rtValue: elements) ] whileTrue: [
		nextLineY := nextLineY + (self gapSize) + (anElement height).
		maxNextLineWidth := maxNextLineWidth max: (anElement width).	
		(anElement = elements last) ifFalse:  [anElement := (elements after: anElement)]
		].
	^ maxNextLineWidth