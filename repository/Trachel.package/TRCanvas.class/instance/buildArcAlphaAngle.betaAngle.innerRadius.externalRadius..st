building
buildArcAlphaAngle: stAngle betaAngle: ndAngle innerRadius: iR externalRadius: eR
	| shape |
	shape := TRArcShape new.
	shape alphaAngle: stAngle betaAngle: ndAngle innerRadius: iR externalRadius: eR.
	self addShape: shape.
	^ shape