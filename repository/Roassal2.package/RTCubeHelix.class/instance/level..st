accessing
level: gradientParameter
	"Return a color. gradientParameter, the argument, is a value between 0.0 and 1.0"
	| gradientGamma phi alpha |
	gradientGamma := gradientParameter raisedTo: gamma.
	phi := 2.0 * Float pi * (hueShift / 3.0 + (rotations * gradientParameter)).
	alpha := saturation * gradientGamma * (1.0 - gradientGamma) / 2.0.
	Coefficients ifNil: [ self class initialize. ].
	
	^ Color fromRgbTriplet: (
		( (Coefficients *alpha) +* (Array with: phi cos with: phi sin)) + gradientGamma
			collect: [ :c | c min: 1 max: 0 ])