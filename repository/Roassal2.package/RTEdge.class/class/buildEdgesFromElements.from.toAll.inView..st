DEPRECATED - edge construction
buildEdgesFromElements: elements from: fromBlock toAll: toBlock inView: view
	"Handy method to easily build edges. Return a list of edges"
	"fromBlock and toBlock operate on the model of the elements"
	"toBlock should return a collection of models"

	^ self buildEdgesFromElements: elements from: fromBlock toAll: toBlock using: RTLine new inView: view