private-adding
addExclusiveInteraction: anInteraction
	"We only keep all the interaction that have a different class"
	interactions := interactions select: [ :i | i class ~~ anInteraction class ].
	self addInteraction: anInteraction