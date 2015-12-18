initialization
initialize
	super initialize.
	self x: #x.
	y0 := 0.
	y1 := #y.
	defined := true.
	tension := 0.7.
	lvar := 'L'.
	self interpolator: RTLinearPathBuilder new.
	self shape shape: RTSVGPath new.
	self shape path: [ :e | self pathFor: e ].
	dataBlock := #yourself