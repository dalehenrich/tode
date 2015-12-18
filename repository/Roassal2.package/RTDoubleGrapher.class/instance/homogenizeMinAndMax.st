min and max
homogenizeMinAndMax
	
	minX := self minX.
	maxX := self maxX.
	minY := self minY.
	maxY := self maxY.
	datasets do: [ :ds |
		ds minX: minX.
		ds minY: minY.
		ds maxX: maxX.
		ds maxY: maxY. ]