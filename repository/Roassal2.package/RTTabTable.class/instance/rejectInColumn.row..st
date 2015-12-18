updating
rejectInColumn: nbColumn row: aBlock
	"Remove rows for which the nbColumn element is evaluated at true"
	self rejectRow: [ :row | aBlock rtValue: (row at: nbColumn) ]
