public
edgesFrom: element toAll: someElements
	"Return a set of edges, with myself as shape. The parameter 'element' is an instance of RTElement, and someElements is simply an ordered collection of RTElement"
	^ (RTEdge from: element toAll: someElements) addShape: self