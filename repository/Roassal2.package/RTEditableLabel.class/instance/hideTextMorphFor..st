rendering
hideTextMorphFor: anElement
	| p base txt |
	fieldArea ifNil: [ ^ self ].
	editLabelShape ifFalse: [ 
		fieldArea delete. ^ self ].
	txt := fieldArea text asString.
	self updateTextFor: anElement with: txt. 
	fieldArea class = RubTextFieldArea ifTrue: [ 
		anElement trachelShape text: txt.
		 ]
	ifFalse: [ | lines aColor fontSize shape |
		lines := txt lines.
		aColor := self colorFor: anElement.
		fontSize := self heightFor: anElement.
		fontName := self fontNameFor: anElement.
		shape := anElement trachelShape.
		p := shape position.
		base := shape shapes first.
		shape remove; setShapes: OrderedCollection new.
		
		lines doWithIndex: [ :l :index | | lbl |
			lbl := TRLabelShape new text: l.
			lbl color: aColor; fontSize: fontSize; fontName: fontName.
			shape addShape: lbl ].
		shape verticalAndLeft.
		anElement view canvas addShape: shape.
		shape translateBy: p.
		shape announcer: base announcer.
	 ].
		
	anElement signalUpdate.
	
	
	fieldArea delete