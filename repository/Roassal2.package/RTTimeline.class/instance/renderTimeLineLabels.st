private - utility
renderTimeLineLabels
	| labels position labelElements offset halfVerticalStep |
	labels := self lineIdentifierLabels.
	labelElements := RTGroup new.
	labels
		doWithIndex: [ :aLabel :index | 
			position := self getPixelPositionOf: 0 @ index.
			labelElements add: (self label: aLabel on: position) ].
	offset := 10.
	halfVerticalStep := (self getPixelPositionOf: 0 @ 1) y / -2.
	TRConstraint alignFromRight: labelElements.
	labelElements translateBy: (labelElements extent x / 2 + offset) negated @ halfVerticalStep