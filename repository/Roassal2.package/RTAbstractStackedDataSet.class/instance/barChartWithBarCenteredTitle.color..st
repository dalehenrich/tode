public
barChartWithBarCenteredTitle: aBlockOrSymbol color: aColor
	"Draw a bar chart with title"
	self barShape.
	elementActions add: [ :elements | 
		| lbl |
		elements do: [ :e |
			lbl := (RTLabel new text: aBlockOrSymbol; color: aColor) elementOn: e model.
			TRConstraint move: lbl below: e.
			"lbl translateBy: (lbl width / -2 @ 0) + (5 @ 0)."
			elements anyOne view add: lbl.
		] ].
	 