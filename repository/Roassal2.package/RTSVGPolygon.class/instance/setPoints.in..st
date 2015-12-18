as yet unclassified
setPoints: anElement in: aRectangle
	|  roundedPoints |
	roundedPoints := ((anElement copy translateTo: (aRectangle center)) vertices).
	roundedPoints := roundedPoints collect: [ :p | (p x rounded) @ (p y rounded)].
	^ roundedPoints