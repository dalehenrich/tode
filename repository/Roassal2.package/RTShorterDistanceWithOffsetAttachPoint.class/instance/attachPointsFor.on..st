public - hooks
attachPointsFor: anEdge on: anElement
	"Return the four possible attach points for each of the four sides for given edge on given element."
	| rec center |
	rec := anElement encompassingRectangle.
	center := rec center.
	
	^ Array 
		"upper side"
		with: ((center x) @ rec top)
		 "right side"
		with: (rec right @ (center y))
		"lower side"
		with: ((center x) @ rec bottom)
		"left side"
		with: (rec left @ (center y))
	