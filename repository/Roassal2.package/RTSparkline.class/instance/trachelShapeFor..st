public
trachelShapeFor: anElement
	| shape |
	shape := TRSVGPath new.
	shape strokePaint: (borderColor rtValue: anElement).
	shape borderWidth: (borderWidth rtValue: anElement).
	shape fillColor: (self fillColor rtValue: anElement).
	self updateFor: anElement trachelShape: shape.
	^ shape