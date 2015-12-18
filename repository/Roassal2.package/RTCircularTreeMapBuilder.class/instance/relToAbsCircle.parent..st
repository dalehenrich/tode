layout
relToAbsCircle: rel parent: parent
	"
	RTCircularTreeMapExample new example02
	"
	| res |
	res := RTCircleTree new x: rel x y: rel y r: rel r.
	res scaleFull: parent r.
	res translateBy: (parent x @ parent y).
	^ res