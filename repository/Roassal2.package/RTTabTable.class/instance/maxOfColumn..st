accessing
maxOfColumn: aBlock
	| max |
	max := -100000.
	self values do: [ :row | max := max max: (aBlock rtValue: row) ].
	^ max