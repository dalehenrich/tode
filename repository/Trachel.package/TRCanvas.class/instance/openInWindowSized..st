instance creation
openInWindowSized: anExtentAsPoint
	| window |
	self buildMorph.
	window := morph openInWindow.
	window extent: anExtentAsPoint.
	^ window