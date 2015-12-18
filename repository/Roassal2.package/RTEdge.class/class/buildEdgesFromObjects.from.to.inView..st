DEPRECATED - edge construction
buildEdgesFromObjects: objects from: fromBlock to: toBlock inView: view
	"Handy method to easily build edges. Return a list of edges"
	"fromBlock and toBlock operate on the model of the elements"

	^ self buildEdgesFromObjects: objects from: fromBlock to: toBlock using: RTLine inView: view