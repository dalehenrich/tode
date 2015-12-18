hooks
computePath
	| i e aAngle bAngle aSin aCos bSin bCos |
	canvas ifNil: [ ^ self ].
	aAngle:=alphaAngle value degreesToRadians.
	bAngle:=betaAngle value degreesToRadians.
	i := innerRadius value.
	e := externalRadius value.
	aCos := aAngle cos.
	aSin := aAngle sin negated.
	bCos := bAngle cos.
	bSin := bAngle sin negated.
	path := 
self athensCanvas
	createPath: [ :builder | 
		builder
			absolute;
			moveTo: ((i * (bCos)) @ (i * (bSin)));
			arcTo:  ((i * (aCos)) @ (i * (aSin))) angle: bAngle - aAngle cw: true;
			ccwArcTo: ((e * (aCos)) @ (e * (aSin))) angle: 0;
			ccwArcTo: ((e * (bCos)) @ (e * (bSin))) angle: bAngle  - aAngle;
			ccwArcTo: ((i * (bCos)) @ (i * (bSin))) angle: 0 ]