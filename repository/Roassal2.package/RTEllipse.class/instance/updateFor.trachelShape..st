rendering
updateFor: anElement trachelShape: trachelShape
	| ex rec |
	trachelShape isNil ifTrue: [ ^ self ].
	ex := (self widthFor: anElement) @ (self heightFor: anElement).
	rec := (anElement position - (ex / 2)) extent: ex.
	
	trachelShape fromRectangle: rec color: (self colorFor: anElement).
	trachelShape strokeWidth: (self borderWidthFor: anElement).
	trachelShape strokePaint: (self borderColorFor: anElement).
	^ trachelShape
	