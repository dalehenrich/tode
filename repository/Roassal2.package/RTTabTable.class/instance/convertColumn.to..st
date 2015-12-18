converting
convertColumn: index to: blockForConvertion
	"Convert a column of the table"
	values do: [ :row | 
		| v i |
		i := (self convertFromNameToIndexIfNecessary: index).
		v := row at: i.
		row at: i put: (blockForConvertion rtValue: v)
		 ]