DEPRECATED - edge construction
buildEdgesFromObjects: objects from: fromBlock to: toBlock using: aLineShape inView: view
	"Handy method to easily build edges. Return a list of edges"
	"fromBlock and toBlock operate on the model of the elements"

	^ self buildEdgesFromObjects: objects from: fromBlock to: toBlock using: aLineShape inView: view scope: (RTGroup withAll: view elements)