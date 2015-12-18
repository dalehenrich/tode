hooks
pointsFrom: from To: to

	| point mid   |
	mid := (to * (1 - offset)) + (from * offset).
	point := from + ((mid - from) rightRotated).
	"(to - from) abs / 2"
	^ Array with: from with: point with: to.



"	| point1 point2 mid   |
	mid := ((to x + from x) / 2) @ ((to y + from y) / 2).
	point1 := from rotateBy: (Float pi /16) about: mid.
	point2 := from rotateBy: (15*(Float pi /16)) about: mid.	
	^ {from.
	point1.
	point2.
	to}
"