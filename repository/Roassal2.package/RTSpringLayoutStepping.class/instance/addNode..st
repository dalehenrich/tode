updating
addNode: anElement
	"Designate the collection of elements that have to be layouted"
	layout 
		addNodes: (Array with: anElement)