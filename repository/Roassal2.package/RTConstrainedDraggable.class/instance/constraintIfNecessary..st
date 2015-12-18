hooks
constraintIfNecessary: anElement
	| p newX newY rec |
	p := anElement position.
	rec := rectangle rtValue: anElement.
	(rec containsPoint: p)
		ifFalse: [ 
			newX := p x.
			newY := p y.
			(p x > rec right) ifTrue: [ newX := rec right ].
			(p x < rec left) ifTrue: [ newX := rec left ].

			(p y < rec top) ifTrue: [ newY := rec top ].
			(p y > rec bottom) ifTrue: [ newY := rec bottom ].

			anElement translateTo: newX @ newY ]