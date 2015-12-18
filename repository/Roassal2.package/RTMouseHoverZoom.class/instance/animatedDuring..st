public
animatedDuring: seconds
	resizeStrategy := [ :anElement :newExtent :afterBlock |
		anElement view addAnimation: (RTResizeMove new
			toExtent: newExtent during: seconds on: anElement;
			after: afterBlock) ].