DEPRECATED - edge construction
buildEdgesFromElements: elements from: fromBlock toAll: toBlock using: aLineShape inView: view
	"Handy method to easily build edges. Return a list of edges"
	"fromBlock and toBlock operate on the model of the elements"
	"toBlock should return a collection of models"

	| es |
	es := self buildEdgesFromElements: elements from: fromBlock toAll: toBlock using: aLineShape.
	view addAll: es.
	^ es