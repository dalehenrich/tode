shapes
linearFillColor: block within: groupOfObjects
	"Set the linear fill color for the nodes. The gradient goes from white to black. anObject could be a symbol, a block or a value. anObject is evaluated against the model of the node to be paint. aGroup is a collection of the model values. This is where the maximum is looked into."
	
	| max |
	"If the collection is empty, then we return an arbitrary color. 
	 If the script is properly done, the color should not be used"
	groupOfObjects isEmpty ifTrue: [ ^ Color red ].
	
	max := groupOfObjects maxValue: block.
	self current color: [ :v | Color grayScale256: 256 - ((block rtValue: v) max: max in: (1 to: 256)) ]