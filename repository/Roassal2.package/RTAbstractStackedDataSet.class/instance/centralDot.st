hooks
centralDot
	^ (RTEllipse new
		size: 0;
		color: Color red) element translateTo: (builder getPixelPositionOf: 0 @ 0)