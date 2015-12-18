rendering
widthFor: anElement
	^ TRLabelShape widthOfText: (self textFor: anElement) fontName: fontName fontSize: (self heightFor: anElement)