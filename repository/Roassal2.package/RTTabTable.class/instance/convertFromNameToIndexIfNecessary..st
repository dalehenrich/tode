private-utility
convertFromNameToIndexIfNecessary: anObject
	"anObject could be a number (to indicate a column index) or a string"
	"The method return the index"
	^ anObject isNumber
		ifTrue: [ anObject ]
		ifFalse: [ 
			"Then we are surely a string" 
			self indexOfName: anObject ]