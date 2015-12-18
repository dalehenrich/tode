accessing
elementsToLookup
	"Return the group of elements to look up the ending of edges"
	^ elementsToLookup isNil ifTrue: [ self elements asGroup ] ifFalse: [ elementsToLookup asGroup ]