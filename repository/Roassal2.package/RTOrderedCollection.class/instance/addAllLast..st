adding
addAllLast: aCollection 
	"Add each element of aCollection at the end of the receiver. 
	Answer aCollection."

	| es |
	aCollection do: [:each | super addLast: each].

	aCollection do: [ :obj | addCallback rtValue: obj ].
	
	es := self shape elementsOn: aCollection.
	self interaction setUpElements: es.
	self layout setUpElements: es.
	viewToUpdate addAll: es.
	self updateView.
	^ aCollection