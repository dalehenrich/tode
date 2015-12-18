accessing
node: anRTKiviatNode
"a chart node is represented by a set of elements according to the metrics values and connected by edges.
 Finish the creation of a chart node, creating elements in the view and edges."
| nodeElems edgeElems shapeNode shapeEdge |

	kiviatNodes add: anRTKiviatNode.
	nodeElems := OrderedCollection new.
	edgeElems := OrderedCollection new.
	
	shapeNode := (shapes isNil) ifFalse: [ RTEllipse new color:(shapes at: (kiviatNodes indexOf: anRTKiviatNode)); size: 10 ] ifTrue: [ anRTKiviatNode shapeNode ] .
	shapeEdge := anRTKiviatNode shapeEdge. 
	
	kiviatMetrics do: [ :m |
		nodeElems add: ((shapeNode) elementOn: ( RTKiviatElement new metric:(m block); position: (m modelBlock value: (self getNormalizedValue: (anRTKiviatNode arrayValues at: (kiviatMetrics indexOf: m)) min: 0  max: (m maxSize)  minValue: 0  maxValue:(m maxValue))); kiviatNode: anRTKiviatNode; value: (anRTKiviatNode arrayValues at: (kiviatMetrics indexOf: m))) ).
		].
	
	anRTKiviatNode addNodeElements: nodeElems.	
		
	nodeElems allButLast do: [ :e | edgeElems add: ((RTEdge from: e to: (nodeElems after:e)) + (shapeEdge color: (e trachelShape color)))]. 
	edgeElems add: ((RTEdge from: (nodeElems last) to: (nodeElems first)) + (shapeEdge color: (nodeElems first trachelShape color))).
	
	anRTKiviatNode addEdgeElements: edgeElems.	
	
	nodeElems do: [  :e | e translateBy: (e model position) ].