DEPRECATED - edge construction
buildEdgesFromElements: elements from: fromBlock to: toBlock
	"Handy method to easily build edges. Return a list of edges"
	"fromBlock and toBlock operates on the model of the elements"

	^ self buildEdgesFromElements: elements from: fromBlock to: toBlock using: RTLine