hooks
trachelShapeFor: anElement
	| shape |
	shape := TRSVGPath new.
	shape strokePaint: (borderColor rtValue: anElement).
	shape borderWidth: (borderWidth rtValue: anElement).
	shape fillColor: (self fillColor rtValue: anElement).
	keepInOriginalPosition
		ifTrue: [ shape path: (path rtValue: anElement) ]
		ifFalse: [ shape centeredPath: (path rtValue: anElement) ].
	shape scaleBy: (self scaleFor: anElement).
	rotation isNil
		ifFalse: [ shape rotateByDegrees: rotation ].
	^ shape