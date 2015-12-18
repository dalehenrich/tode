public - shapes
emphasizeBy: anIntegerOrASymbolOrABlock
	"anIntegerOrASymbolOrABlock is the distance for which object has to be moved away"
	objects do: [ :object |
		self emphasize: object by: anIntegerOrASymbolOrABlock ]