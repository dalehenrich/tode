accessing
block: aTwoArgBlock
	"The argument is a two arg block. The two arguments are the two points one has to draw the line. The block has to return a collection of point.
	
	The arg follows [ :fromPoint :toPoint | Array with: ... with: ... with: ... ]"
	path := aTwoArgBlock 