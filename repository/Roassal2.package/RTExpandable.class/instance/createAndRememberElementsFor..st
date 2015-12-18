as yet unclassified
createAndRememberElementsFor: element
	| t |
	t := self createElementsFor: element.
	element attributes at: #expandedElements put: t.
	element attributes at: #oldExtent put: element extent.
	^ t