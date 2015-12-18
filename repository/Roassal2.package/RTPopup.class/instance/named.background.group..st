public
named: aOneArgBlock background: aColor group: aTwoArgBlock
	"aTwoArgBlock has to follow the pattern [ :group :element |  ... ]
	group is an empty group. You need to add what you want to be displayed in the popup. el is the element on which the mouse is above."
	
	self group: [ :group :el |
		| background label |
		background := (RTBox new color: (aColor alpha: 0.4)) element.
		label := (RTLabel new text: aOneArgBlock; color: Color black) elementOn: el model.
		
		aTwoArgBlock value: group value: el.
		
		group addFirst: background; addFirst: label.
		RTNest new centerOn: background elements: (group copyWithoutAll: (Array with: background with: label)).
		TRConstraint move: label above: background.
		]
	