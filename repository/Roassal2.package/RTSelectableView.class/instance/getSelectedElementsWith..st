as yet unclassified
getSelectedElementsWith: s
	| g r |
	g := RTGroup new. 
	r := s encompassingRectangle.
	view elements do: [ :e | 
		((e ~= s) and: [ e trachelShape encompassingRectangle intersects: r ])
			ifTrue: [ g add: e. ] ].
	^ g