accessing
elements: aCollection 

	| rows  col |
	rows := (aCollection size / columns) ceiling rounded.
	col := Array new: rows * columns.
	1 to: aCollection size do: [ :i | col at: i put: (aCollection at: i)].
	elements := RTCellMatrix 
						rows: rows
						columns: columns 
						contents: col.
	self computeColumnWidths.
	self computeRowHeights.