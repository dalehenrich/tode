accessing
clientElement: aClientElement
	| view |
	super clientElement: aClientElement.
	view := self roassalView.
	view open