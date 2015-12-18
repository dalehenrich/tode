initialization
initialize
	super initialize.
	ratio := self defaultRatio.
	desiredExtent := [ :anElement | anElement extent * ratio ].
	zoomInElements := OrderedCollection new.
	self animated.