public
popup
	"Return a new popup, which is set in the builder"
	| i |
	i := RTPopup new.
	self addExclusiveInteraction: i. 
	^ i