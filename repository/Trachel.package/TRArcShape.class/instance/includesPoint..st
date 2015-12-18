testing
includesPoint: aPoint
	| pDistanceOrigin pointAngle inside aAngle bAngle |
	(alphaAngle value = betaAngle value) ifTrue: [ ^ false ].
	inside:=true.
	(alphaAngle value % 360 = 0 ) 
		ifFalse: [ aAngle := alphaAngle value \\  360 ]
		ifTrue: [ aAngle := alphaAngle value ].
	(betaAngle value % 360 = 0 )
		ifFalse: [ bAngle := betaAngle value \\  360 ]
		ifTrue: [ bAngle := betaAngle value ].
		self flag: 'reivew this'.
	pointAngle:= ((aPoint x @ aPoint y) angleWith: 0@0"<-") radiansToDegrees \\  360.
	pDistanceOrigin := (aPoint squaredDistanceTo: 0@0"<-") sqrt.
	((pDistanceOrigin < innerRadius value) or: (pDistanceOrigin > externalRadius value))
		ifTrue: [ ^ false ].
	(pointAngle % 360 = 0 )
		ifTrue:[
			(aAngle % 360 = 0) ifTrue: [^ true ].
			(bAngle % 360 = 0) ifTrue: [ ^ true ] ].
	(aAngle < bAngle)
	ifTrue:[
		(pointAngle >= aAngle) ifTrue:[ inside:=inside not ].
		(pointAngle <= bAngle) ifTrue:[ inside:=inside not ] ]
	ifFalse:[
		(bAngle = 0) ifTrue:[bAngle:=360].
		(pointAngle <= aAngle) ifTrue:[ inside:=inside not ].
		(pointAngle <= bAngle) ifTrue:[ inside:=inside not ] ].
	^ inside