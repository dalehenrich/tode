hooks
renderIn: aView
	| elements |
	elements := self shape elementsOn: data.
	aView addAll: elements.
	self interaction setUpElements: elements