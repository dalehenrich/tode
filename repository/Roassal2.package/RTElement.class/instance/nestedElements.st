accessing
nestedElements
	"Return the list of elements that I may nest. Return an empty array if none"
	^ (self hasAttribute: #nestedElements)
		ifTrue: [ self attributeAt: #nestedElements ]
		ifFalse: [ #() ]