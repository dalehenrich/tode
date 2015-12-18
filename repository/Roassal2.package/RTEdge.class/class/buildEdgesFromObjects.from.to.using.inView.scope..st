DEPRECATED - edge construction
buildEdgesFromObjects: objects from: fromBlock to: toBlock using: aLineShape inView: view scope: aGroup
	"Handy method to easily build edges. Return a list of edges"
	"fromBlock and toBlock operate on the model of the elements"

	| es |
	es := self buildEdgesFromObjects: objects from: fromBlock to: toBlock using: aLineShape scope: aGroup.
	view addAll: es.
	^ es