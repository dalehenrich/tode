public
simple
	resizeStrategy := [ :anElement :newExtent :afterBlock |
		anElement extent: newExtent.
		afterBlock value.
		anElement signalUpdate. ].