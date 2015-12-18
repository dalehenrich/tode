as yet unclassified
createOrRetreiveElementsFor: element
	^ (self hasElementBeenExpended: element)
		ifTrue: [ self retreiveElementsFor: element ]
		ifFalse: [ self createAndRememberElementsFor: element ]