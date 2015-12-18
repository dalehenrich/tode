trachel shape production
trachelShapeForOneLine: anElement
	|  shape |	
	shape := TRLabelShape new.
	shape text: (self textFor: anElement);
			color: (self colorFor: anElement);
			position: anElement position;
			fontSize: (self heightFor: anElement);
			fontName: (self fontNameFor: anElement).
	^ shape