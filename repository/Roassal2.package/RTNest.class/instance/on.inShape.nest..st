public
on: element inShape: aSymbol nest: elements
	"public method"
	"add nested elements, in a particular shape of the composed shape of the element. Assume that the shape of element is composed"
	"aSymbol could be #first, #second, #third, #fourth"
	
	"We assume that the roassal shape of element is composed"
	^ self on: element inShape: aSymbol nest: elements layout: #vertical