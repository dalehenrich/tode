converting
replaceZeroWithCumulativeValuesInColumns: columns
	columns
		do: [ :column | 
			| previous |
			previous := 0.
			values
				do: [ :row | 
					(row at: column) = 0 ifTrue: [ row at: column put: previous ].
					previous := row at: column ] ]