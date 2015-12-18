public
background: aColor group: aTwoArgBlock
	"aTwoArgBlock has to follow the pattern [ :group :element |  ... ]
	group is an empty group. You need to add what you want to be displayed in the popup. el is the element on which the mouse is above."
	
	self group: [ :group :el |
		| b |
		b := (RTBox new color: (aColor alpha: 0.4)) element.
		group add: b.
		aTwoArgBlock value: group value: el.
		RTNest new centerOn: b elements: (group copyWithout: b).
		]