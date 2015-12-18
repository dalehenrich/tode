initialization
initialize
	super initialize.
	color := Color gray darker alpha: 0.3.
	view := nil.
	isOpen := false.
	isLocked := false.
	savedLabelBackgroundColor := color.
