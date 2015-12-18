accessing
computeColumnWidths

	columnWidths := Array new: elements columnCount.
	1 to: elements columnCount do: [ :columnIndex |
		columnWidths at: columnIndex put: ((elements atColumn: columnIndex) select: #notNil thenCollect: #width) max
	 ].