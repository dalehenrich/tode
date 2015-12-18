utils
nameFor: anElement
	"Author: milton mamani
	Date: 12/05/2015
	There are several shapes and edges, to handle the relations between the shapes RTVisitor
	uses a dictionary(names) to asign one unique id to that shape"
	(names includesKey: anElement) 
		ifTrue: [ ^ names at: anElement ] 
		ifFalse: [ 
			| n |
			n := names size printStringHex.
			names at: anElement put: n.
			^ n.]