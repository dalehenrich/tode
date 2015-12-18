interactions
popupTextFor: elt
	^ elt model lhs printString, String cr,
		elt model rhs printString, String cr,
		'similarity = ', elt model similarity printString