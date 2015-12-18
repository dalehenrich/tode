RTMapLocationExample new installTitle: 'SeismOnEarth' 
		code:
		'
| b tab |
tab := RTTabTable new input:  RTMapLocationBuilder new seismData2 usingDelimiter: $,.
tab removeFirstRow.
tab replaceEmptyValuesWith: ''0'' inColumns: #(2 3 4 5).
tab convertColumnsAsFloat: #(2 3 4 5).
b := RTMapLocationBuilder new.
b shape circle
size: [ :v | (2 raisedTo: v) / 2 ];
color: (Color red alpha: 0.3).
tab values do: [ :row | b addPoint: row second @ row third value: row fifth ].
b open.
b view canvas'
	