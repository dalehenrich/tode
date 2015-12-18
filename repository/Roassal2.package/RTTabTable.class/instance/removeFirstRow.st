accessing
removeFirstRow
	"Remove the first line of the table, typically the header"
	firstRow := values first.
	values := values allButFirst