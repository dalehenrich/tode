hooks
updateFor: anElement trachelShape: trachelShape
	| ex |
	trachelShape isNil ifTrue: [ ^ self ].
	
	form isNil ifTrue: 
		[ ex := (self widthFor: anElement) @ (self heightFor: anElement).
		  trachelShape extent: ex.
		  ^ self ].

	trachelShape form: (self form rtValue: anElement)
