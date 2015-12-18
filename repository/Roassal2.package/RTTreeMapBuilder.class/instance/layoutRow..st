layout
layoutRow: row
	| container |
	container := rectangle currentSubrectangle.
	(container width >= container height)
		ifTrue: [ self layoutVerticalRow: row ]
		ifFalse: [ self layoutHorizontalRow: row ].
	self layoutChildrenOfRow: row.
	self prepareNextRectangleAfterRow: row.