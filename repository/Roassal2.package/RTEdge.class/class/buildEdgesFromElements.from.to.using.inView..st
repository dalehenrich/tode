DEPRECATED - edge construction
buildEdgesFromElements: elements from: fromBlock to: toBlock using: aLineShape inView: view
	"Handy method to easily build edges. Return a list of edges"
	"fromBlock and toBlock operate on the model of the elements"

	view addAll: (self buildEdgesFromElements: elements from: fromBlock to: toBlock using: aLineShape)