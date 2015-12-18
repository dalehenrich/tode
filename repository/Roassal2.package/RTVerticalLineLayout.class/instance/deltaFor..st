hook
deltaFor: aNodeFigure
	
	| delta |
	delta := 0.
	self alignment == #right ifTrue: [delta := aNodeFigure width].
	self alignment == #center ifTrue: [delta := aNodeFigure width / 2.0].
	^delta @ 0