utility
leaveSubmenuOf: lbl
	| menu |
		menu := lbl element.
		menu hideItems.
		menu labelBackgroundColor: (menu savedLabelBackgroundColor).
		self signalUpdate.