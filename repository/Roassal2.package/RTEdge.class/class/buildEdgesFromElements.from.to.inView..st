DEPRECATED - edge construction
buildEdgesFromElements: elements from: fromBlock to: toBlock inView: view
	"Handy method to easily build edges. Return a list of edges"

	^ self buildEdgesFromElements: elements from: fromBlock to: toBlock using: RTLine inView: view