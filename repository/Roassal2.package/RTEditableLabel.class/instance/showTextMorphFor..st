rendering
showTextMorphFor: anElement
	| shape rect  trachelShape str posBlock clazz |
	shape := anElement shape.
	rect := anElement encompassingRectangle.
	anElement trachelShape class = TRCompositeShape ifTrue: [ 
		trachelShape := anElement trachelShape shapes first.
		clazz := RubEditingArea ]
	ifFalse: [ 
		trachelShape := anElement trachelShape.
		clazz := RubTextFieldArea ].
	
	str :=  shape textFor: anElement.
	fieldArea := clazz new 
		takeKeyboardFocus;
		updateTextWith: str;
		font: trachelShape font;
		onAnnouncement: MorphLostFocus do: [ :ann | ann morph delete ];	
		openInWorld.
	fieldArea editor selectAt: str size+1.
	
	posBlock := [| pos |
		pos := anElement trachelShape isFixed ifTrue: 
			[ anElement position ] ifFalse: 
			[ anElement view canvas camera fromSpaceToPixel: anElement position ].
		fieldArea position: anElement view canvas morph bounds origin+ pos - (fieldArea extent /2)].
	posBlock value.
	editLabelShape ifFalse: [ 
		fieldArea minimumWidth: rect width.
		fieldArea updateTextWith: ''.
		 ].
	
	events do: [ :evt | fieldArea announcer subscribe: evt key send: #value to: 
		[ evt value value: fieldArea text asString ] ] .
	updateMorphExtent ifTrue: [ 
		fieldArea announcer subscribe: RubTextChanged send: #value to: [ posBlock value ] ].
	