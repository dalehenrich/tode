initialization
initialize
	super initialize.
	labelled := false.
	callback := [ :aValue | ].
	sliderElements := #().
	max := 1.0