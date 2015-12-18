visitor
visitArcShape: aShape
	|sCenter svgE|
	sCenter := self alignPoint: (aShape center).
	svgE := RTSVGArc new element: (aShape) center: sCenter r1: (aShape innerRadius) r2: (aShape externalRadius) aAngle: (aShape alphaAngle) bAngle: (aShape betaAngle) color: (aShape color).
	svgE addOn: stream using: self. 