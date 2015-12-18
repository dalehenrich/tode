initialization
initialize
	super initialize.
	hosts := OrderedCollection new.
	elementBeingDragged := nil.
	doBlock := [:fromElement :toElement | "do nothing" ]