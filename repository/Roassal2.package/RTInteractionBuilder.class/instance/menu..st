morphic specific
menu: aSymbolOrBlockOrMenu
	"the argument has to return a menu morph, when evaluated against the object"
	interactions add: [ :element | element when: TRMouseRightClick do: [ :evt | (aSymbolOrBlockOrMenu rtValue: evt element model) popUpInWorld ] ]
