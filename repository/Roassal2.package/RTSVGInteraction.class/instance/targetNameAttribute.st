adding
targetNameAttribute
	self target trachelShape class = TRArcShape ifTrue: [ ^'arc' ].
	self target trachelShape class = TRBezierShape ifTrue: [ ^'bezier' ].
	self target trachelShape class = TRBoxShape ifTrue: [ ^'rect' ].
	self target trachelShape class = TREllipseShape ifTrue: [ ^'ellipse' ].
	self target trachelShape class = TRLabelShape ifTrue: [ ^'text' ].
	self target trachelShape class = TRLineShape ifTrue: [ ^'line' ].
	self target trachelShape class = TRRotatedLabelShape ifTrue: [ ^'text' ].
	self target trachelShape class = TRSVGPath ifTrue: [ ^'p' ].