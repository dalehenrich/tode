*roassal2
referencedByClasses: aCollectionOfClasses
	| references |
	references := OrderedCollection new.
	aCollectionOfClasses do: [ :eachClass |
		(self isReferencedBy: eachClass) 
			ifTrue: [ references add: eachClass ] ].
	^ references