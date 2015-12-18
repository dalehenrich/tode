actions
focusOnCenterScaled: aFactor
	| sc rec |
	canvas numberOfShapes = 0 ifTrue: [ ^ self ].
	rec := self encompassingRectangle.
	self translateTo: rec center.
	sc := aFactor / rec extent.
	sc := (sc x < sc y) ifTrue: [sc x] ifFalse: [ sc y ].
	self scale: sc.