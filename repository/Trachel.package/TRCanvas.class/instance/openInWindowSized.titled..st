instance creation
openInWindowSized: anExtentAsPoint titled: aTitle
	| window |
	window := self openInWindowSized: anExtentAsPoint.
	window setLabel: aTitle.
	^ window