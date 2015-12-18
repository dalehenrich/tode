public
from: cityElem1 to: cityElem2
	|route edge|
	route := RTRoute new.
	edge := RTEdge from: cityElem1 to: cityElem2.
	edge model: route.
	route edge: edge.
	^ route.