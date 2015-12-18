hook
doExecuteOLD: elements 
	| pointer lineItemCount lineItemSize cell lineCount columnWidth |
	lineItemSize := self lineItemsCountBlock rtValue: elements.
	cell := RTCell elements: elements columns: lineItemSize.

	pointer := self gapSize @ self gapSize.
	lineItemCount := 0.
	lineCount := 1.
	elements withIndexDo: 
		[ :element :index | 
		lineItemCount := lineItemCount + 1.
		columnWidth := cell columnWidthAt: lineItemCount.
		cell element: element; number: index.
		
		align == #left
			ifTrue: [ 
				translator translateTopLeftOf: element to: pointer.
				pointer := ((pointer x + (self gapSize * 2)) @ pointer y) + (columnWidth @ 0) ].

		align == #center
			ifTrue: [ 
				pointer := pointer + (columnWidth / 2 @ 0).
				translator translateCenterLeftOf: element to: pointer.
				pointer := ((pointer x + (self gapSize * 2)) @ pointer y) + (columnWidth / 2 @ 0) ].

		
		lineItemCount >= lineItemSize ifTrue: [   
			pointer := self gapSize @ (pointer y + (self gapSize * 2) + ((cell rowHeightAt: lineItemCount) / 2)).
			(align == #center and: [ lineCount > 1 ])
				ifTrue: [ pointer := pointer + ((cell rowHeightAt: lineCount - 1) / 2) ].
			lineItemCount := 0.
			lineCount := lineCount + 1 ].

		self step ]