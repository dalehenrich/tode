refreshing
refresh
	| color |
	color := animatedValue value.
	element trachelShape color: color.
	"element trachelShape resetPath."
	element trachelShape canvas signalUpdate.