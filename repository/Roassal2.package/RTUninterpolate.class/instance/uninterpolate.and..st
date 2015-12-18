as yet unclassified
uninterpolate: aNum1 and: aNum2
	a := aNum1.
	b := aNum2.
	a isNumber 
		ifFalse: [ 
			^ a := b := Float nan. ].
	b  := b - a.
	b isZero 
		ifTrue: [ b := 1 / aNum2 ].