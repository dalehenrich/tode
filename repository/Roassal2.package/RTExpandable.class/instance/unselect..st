as yet unclassified
unselect: element
	(self retreiveElementsFor: element) do: #remove.
	element extent: (element attributes at: #oldExtent).
	self evaluateAfterBlock