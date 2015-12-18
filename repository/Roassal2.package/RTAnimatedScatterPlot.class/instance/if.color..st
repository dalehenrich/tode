coloring
if: aBlockForCondition color: aBlockForColor
	properties add: [ :row :element |
		(aBlockForCondition rtValue: row) ifTrue: [ element trachelShape color: ((aBlockForColor rtValue: row) alpha: 0.4) ] ]
	