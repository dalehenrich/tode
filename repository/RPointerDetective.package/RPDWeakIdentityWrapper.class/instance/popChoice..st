as yet unclassified
popChoice: aSize
	| aList value |
	aList := {'3'. '10'. (aSize asString)}.
	value := UIManager default chooseFrom: aList lines: #() title: 'More than 10 references on one one of the next nodes, display:'.
	
	(value = 1) ifTrue: [ ^3 ] ifFalse: [ (value = 2) ifTrue:[ ^10 ] ifFalse: [^aSize] ]
						