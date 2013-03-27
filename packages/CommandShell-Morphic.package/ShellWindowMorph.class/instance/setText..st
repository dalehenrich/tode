model access
setText: aText
	scrollBar setValue: 0.0.
	textMorph
		ifNil: [textMorph := TtyTextMorphForEditView new
						contents: aText wrappedTo: self innerBounds width-6.
				textMorph setEditView: self.
				textMorph setTextStyle: self textStyle.
				scroller addMorph: textMorph]
		ifNotNil: [textMorph newContents: aText].
	self hasUnacceptedEdits: false.
	self setScrollDeltas.