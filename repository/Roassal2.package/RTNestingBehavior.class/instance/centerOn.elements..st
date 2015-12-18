utility
centerOn: backElement elements: elements
	"Public method. This method does the following actions:
		- resize the backElement to encompasse all the elements
		- translate all the elements on top of backElement
		- perform a layout if one is set"

	"A bit ugly here"
	(backElement isKindOf: TRShape)
		ifTrue: [ self centerOnTrachelShape: backElement elements: elements ]
		ifFalse: [ self centerOnTrachelShape: backElement trachelShape elements: elements ]
	