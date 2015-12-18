public - layout
gridWithPerRow: aNumber
	layout := RTGridLayout new.
	layout lineItemsCount: aNumber.
	^ layout