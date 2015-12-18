as yet unclassified
rescale
	| linear |
	linear := (domain size min: range size ) > 2
		ifTrue: [ RTScalePolylinear ]
		ifFalse: [ RTScaleBilinear ].
	uninterpolate := clamp
		ifTrue: [ RTUninterpolateClamp ]
		ifFalse: [ RTUninterpolateNumber ].
	output := linear new domain: domain; range: range; 
		uninterpolate: uninterpolate; interpolate: interpolate.
	output rescale.
	input := linear new domain: range; range: domain;
		uninterpolate: uninterpolate; interpolate: RTInterpolator.
	input rescale.