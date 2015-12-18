removing
testRemoving
	| t callback shape canvas |
	t := nil.
	callback := TRRemoveCallback new.
	callback block: [ :aShape | t := aShape hash ].
	
	shape := TRBoxShape new size: 20.
	shape addCallback: callback.
	
	canvas := TRCanvas new.
	self assert: canvas numberOfShapes equals: 0.
	canvas addShape: shape.
	shape translateBy: 5 @ 5.
	self assert: t isNil.
	
	self assert: canvas numberOfShapes equals: 1.
	shape remove.
	self assert: t equals: shape hash.
	self assert: canvas numberOfShapes equals: 0.