public
on: element inShape: aSymbol nest: elements layout: aSymbolLayout
	"public method"
	"aSymbol could be #first, #second, #third, #fourth
	
	aSymbolLayout is either #vertical or #horizontal"
	
	self doLayoutIfNecessaryOn: elements.
	
	"We assume that the roassal shape of element is composed"
	behavior on: (aSymbol rtValue: element trachelShape shapes) setNested: elements asGroup.
	"self onTrachelShape: (aSymbol rtValue: element trachelShape shapes) nest: elements."

	aSymbolLayout rtValue: element trachelShape.
	element trachelShape relayout.
	self mark: element with: elements