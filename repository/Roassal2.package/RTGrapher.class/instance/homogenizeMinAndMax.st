min and max
homogenizeMinAndMax
	| tminX tmaxX tminY tmaxY block r |
	generator setLooseFlag: true.
	block := [ :axis :lmin :lmax | 
		| result nticks |
		nticks := axis numberOfTicks isZero
			ifTrue: [ 2 ]
			ifFalse: [ axis numberOfTicks ].
		result := generator searchMin: lmin max: lmax desired: nticks.
		axis numberOfTicks isZero
			ifFalse: [ axis numberOfTicks: result numberOfTicks ].
		axis numberOfLabels isZero
			ifFalse: [ axis numberOfLabels: result numberOfTicks ].
		result ].
	shouldUseNiceLabelsForX
		ifTrue: [ 
			r := block value: self getAxisX value: self minX value: self maxX.
			self minX: (tminX := r min).
			self maxX: (tmaxX := r max) ]
		ifFalse: [ 
			tminX := self minX.
			tmaxX := self maxX ].
	shouldUseNiceLabelsForY
		ifTrue: [ 
			r := block value: self getAxisY value: self minY value: self maxY.
			self minY: (tminY := r min).
			self maxY: (tmaxY := r max) ]
		ifFalse: [ 
			tminY := self minY.
			tmaxY := self maxY ].
	datasets
		do: [ :ds | 
			ds minX: tminX.
			ds minY: tminY.
			ds maxX: tmaxX.
			ds maxY: tmaxY ]