visitor-interactions
visitDraggableInteraction: anInteraction with: anObject
	| list |
	list := OrderedCollection new.
	(anObject attributes includesKey: #RTLabelledLabel) ifTrue: [  
		list add: (anObject attributes at: #RTLabelledLabel).
	].
	(anObject attributes includesKey: #nestedElements) ifTrue: [ 
		(anObject attributes at: #nestedElements) do: [ :e |
			e isCollection ifTrue: [ list addAll: (e collect: [:x | x trachelShape ]) ]
			ifFalse: [ list add: e trachelShape ] ].
	].
	list isEmpty ifTrue: [ self visitInteraction: anInteraction with: anObject ]
	ifFalse: [
		stream nextPutAll: 'new RTDraggable(['.
		list do: [ :e | 
			stream nextPutAll: '"';
				nextPutAll: (self nameFor:e);
				nextPutAll: '", ' ].
			stream nextPutAll: '])'.
	]
	