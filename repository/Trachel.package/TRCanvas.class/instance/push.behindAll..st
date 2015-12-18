action
push: aShape behindAll: aCollection 
	"Move the first argument, which is supposely be contained in the shapes variable, before all elements contained in aCollection"
	| firstElement |
	firstElement := self firstElementOf: aCollection.
	self push: aShape behind: firstElement