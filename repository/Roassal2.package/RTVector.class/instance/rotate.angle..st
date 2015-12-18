computing
rotate: axis angle: angle
	| n |
	n := RTVector new x: axis x y: axis y z: axis z.
	n normalize.
	n scaleBy: (n dot: self).
	n add: ((self - n) scaleBy: angle cos ).
	n add: ((n cross: self) scaleBy: angle sin).
	^ n.