updating
rejectRow: aBlock
	"Remove a row for which the block evaluate to true. The block takes as argument the row"
	values := values reject: [ :v | aBlock rtValue: v ]