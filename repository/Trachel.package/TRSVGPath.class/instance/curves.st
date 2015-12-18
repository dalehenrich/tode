accessing
curves
	curves isNil ifFalse: [ ^ curves ].
	self computeCurves.
	self computePolygons.
	^ curves