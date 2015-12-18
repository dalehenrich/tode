public
textElement: aOneArgBlock
	self group: [ :group :element | 
		| backRectangle lbl |
		backRectangle := (RTBox new color: (Color gray alpha: 0.8); borderColor: (Color gray alpha: 0.5)) element.
		lbl := (RTLabel new 
				color: textColor;
				height: [:x | 9];
				text: (aOneArgBlock rtValue: element) asString) element.
		RTNest new centerOn: backRectangle elements: (Array with: lbl).
		group add: backRectangle; add: lbl
		] 
