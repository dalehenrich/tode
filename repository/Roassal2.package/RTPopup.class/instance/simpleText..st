public
simpleText: aOneArgBlock
	self group: [ :group :element | 
		group add: 
			(RTLabel new 
				color: Color black;
				text: (aOneArgBlock rtValue: element model)) element
		] 
