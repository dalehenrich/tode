adding
targetColorAttribute
	self target trachelShape class = TRArcShape ifTrue: [ ^'fill' ].
	self target trachelShape class = TRBezierShape ifTrue: [ ^'stroke' ].
	self target trachelShape class = TRBoxShape ifTrue: [ ^'fill' ].
	self target trachelShape class = TREllipseShape ifTrue: [ ^'fill' ].
	self target trachelShape class = TRLabelShape ifTrue: [ ^'fill' ].
	self target trachelShape class = TRLineShape ifTrue: [ ^'stroke' ].
	self target trachelShape class = TRRotatedLabelShape ifTrue: [ ^'fill' ].
	self target trachelShape class = TRSVGPath ifTrue: [ ^'fill' ].
	self error: 'Should not be here'