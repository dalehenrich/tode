initialization
initialize
	super initialize.
	step := 1.
	evolutionPeriod := OrderedCollection new.
	self initializeCities.
	self shape
		circle;
		color: (Color red alpha: 0.5);
		size: 15.
	name := #yourself.