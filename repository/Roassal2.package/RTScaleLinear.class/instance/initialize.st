as yet unclassified
initialize
	super initialize.
	domain := {0. 1}.
	range := {0. 1}.
	clamp := false.
	interpolate := RTInterpolator.
	self rescale.