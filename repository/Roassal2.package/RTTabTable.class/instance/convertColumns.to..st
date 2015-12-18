converting
convertColumns: collectionOfIntegers to: aBlock
	"collectionOfIntegers is a collection of integers corresponding to column to convert"
	"block is a one-arg block that takes as input a string and return the wanted value"

	collectionOfIntegers do: [ :index | 
		self convertColumn: index to: aBlock ]