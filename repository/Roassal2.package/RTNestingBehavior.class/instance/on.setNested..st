hooks
on: backElement setNested: elements
	"Override this method to express a particular behavior"
	self centerOn: backElement elements: elements.
	self makeElements: elements draggableBy: backElement.
	self resize: backElement for: elements