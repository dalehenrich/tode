hooks
trachelShapeFor: anElement
	|  shape |
	"ex := (self widthFor: anElement) @ (self heightFor: anElement)."
	"rec := (anElement position ) extent: ex."
	
	shape := TRRotatedLabelShape new.
	shape text: (self textFor: anElement);
			color: (self colorFor: anElement);
			position: anElement position;
			angleInDegree: (self angleFor: anElement);
			fontSize: (self heightFor: anElement).
	^ shape