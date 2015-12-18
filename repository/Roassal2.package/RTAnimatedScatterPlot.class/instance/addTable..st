adding
addTable: table
	tables add: table.
	table convertColumnsAsFloat: (2 to: table numberOfColumns).