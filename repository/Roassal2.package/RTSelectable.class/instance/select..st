actions
select: element
	element attributeAt: #oldColor put: element trachelShape color.
	element trachelShape color: Color red.
	self evaluateCallbackForElement: element.
	self prepareViewBeenForDeselection: element view