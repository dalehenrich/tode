action
firstElementOf: aCollection 
	"Return the first element of aCollection that will be displayed. This method assume that all elements contained in aCollection belong to shapes. It also assumes that aCollection is not empty"
	| lastElement lastIndex |
	lastElement := aCollection first.
	lastIndex := shapes indexOf: lastElement.
	aCollection do: [ :e |
		| v |
		v := shapes indexOf: e.
		(v < lastIndex) ifTrue: [ 
			lastElement := e.
			lastIndex := v ]
		 ].
	^ lastElement