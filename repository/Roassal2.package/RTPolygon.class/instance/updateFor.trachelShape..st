hooks
updateFor: anElement trachelShape: trachelShape

	trachelShape isNil ifTrue: [ ^ self ].
	trachelShape color: (self colorFor: anElement).
	trachelShape strokeWidth: (self borderWidthFor: anElement).
	trachelShape strokePaint: (self borderColorFor: anElement).
	trachelShape vertices: vertices