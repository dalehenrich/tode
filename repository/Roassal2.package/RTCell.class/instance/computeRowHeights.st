accessing
computeRowHeights

	rowHeights := Array new: elements rowCount.
	1 to: elements rowCount do: [ :rowIndex |
		rowHeights at: rowIndex put: ((elements atRow: rowIndex) select: #notNil thenCollect: #height) max
	 ].