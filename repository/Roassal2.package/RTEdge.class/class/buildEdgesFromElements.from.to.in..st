DEPRECATED - edge construction
buildEdgesFromElements: elements from: fromBlock to: toBlock in: view
	"Handy method to easily build edges. Return a list of edges"

	^ self buildEdgesFromElements: elements from: fromBlock to: toBlock using: RTLine in: view