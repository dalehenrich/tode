hooks
trachelShapeFor: anElement
	|  shape |	
	shape := TRExtensibleLabelShape new.
	shape text: (self textFor: anElement);
			color: (self colorFor: anElement);
			position: anElement position;
			fontSize: (self heightFor: anElement).
	^ shape