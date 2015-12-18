hook
doExecute: aNodeCollection 
	"Coffman-Graham-Layering. Di Battista Book, page 275, chapter, 9.2.1"
	self assignLabels: aNodeCollection.
	self buildLayers: aNodeCollection copy.
	self addDummyNodes.
	self reduceCrossing.
	self layoutAt: self verticalGap @ self horizontalGap