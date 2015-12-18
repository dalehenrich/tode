utils
getPointFrom: aCenter angle: anAngle radius: aNumber
	|x y|
	x := (aCenter x + (anAngle cos * aNumber)) rounded.
	y := (aCenter y + (anAngle sin * aNumber)) rounded.
	^  x@y