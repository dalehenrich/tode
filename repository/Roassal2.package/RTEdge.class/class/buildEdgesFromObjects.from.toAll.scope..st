DEPRECATED - edge construction
buildEdgesFromObjects: objects from: fromBlock toAll: toAllBlock scope: aGroup
	"Handy method to easily build edges. Return a list of edges"
	"fromBlock and toAllBlock operate on the model of the elements"
	^ self buildEdgesFromObjects: objects from: fromBlock toAll: toAllBlock using: RTLine new scope: aGroup