examples
example02
	"
	self new example02
	"
	| b tab |
	tab := RTTabTable new input: self seismData usingDelimiter: $,.
	tab removeFirstRow.
	tab convertColumnsAsFloat: #(2 3 4 5).
	b := RTMapLocationBuilder new.
	b shape circle
		size: [ :v | (2 raisedTo: v) / 2 ];
		color: (Color red alpha: 0.3).
	tab values do: [ :row | b addPoint: row second @ row third value: row fifth ].
	b open