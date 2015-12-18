converting
replaceEmptyValuesWith: aValue inColumns: columns
	"columns is a collection of integers"
	self convertColumns: columns to: [ :s | s isEmpty ifTrue: [ aValue ] ifFalse: [ s ] ]