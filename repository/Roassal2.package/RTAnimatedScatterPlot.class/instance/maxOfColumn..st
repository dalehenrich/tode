accessing
maxOfColumn: aBlock
	"aBlock is evaluated for each row, in each table, and return the maximum value"
	| max |
	max := tables first maxOfColumn: aBlock.
	tables do: [ :t |
		max := max max: (t maxOfColumn: aBlock)
		 ].
	^ max