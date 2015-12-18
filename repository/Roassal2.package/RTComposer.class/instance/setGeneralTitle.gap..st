public title
setGeneralTitle: aTitleAsString gap: gapAsPoint
	| title |
	title := (RTLabel new text: aTitleAsString; height: 20) element.
	TRConstraint move: title above: self allGroupedElements asGroup.
	title translateBy: gapAsPoint.
	self view add: title