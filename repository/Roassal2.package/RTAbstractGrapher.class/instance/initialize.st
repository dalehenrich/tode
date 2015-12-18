initialization
initialize
	super initialize.
	extent := 300 @ 200.
	minX := 0.
	minY := 0.
	maxX := 0.
	maxY := 0.
	
	"Collection of decorators"
	decorators := OrderedCollection new.
