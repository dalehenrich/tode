UI
createElements
	| es shape |
	shape := RTEllipse new
		size: 15;
		color: (Color gray alpha: 0.4).
	es := shape elementsOn: self allEntries.
	es @ RTPopup.
	es when: TRMouseClick do: [ :evt | evt element inspect ].
	^ es