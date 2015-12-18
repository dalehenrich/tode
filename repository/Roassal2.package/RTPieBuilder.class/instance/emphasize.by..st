public - pies
emphasize: object by: anIntegerOrASymbolOrABlock
	"public method"
	"Move the pie to a given offset"
	"anIntegerOrASymbolOrABlock is the distance for which object has to be moved away"
	| element trachelShape delta v |
	element := view elementFromModel: object.
	trachelShape := element trachelShape.
	
	v := (anIntegerOrASymbolOrABlock rtValue: object).
	delta := (trachelShape position + (v @ 0)) 
						rotateBy: ((trachelShape betaAngle - trachelShape alphaAngle) / 2 + trachelShape alphaAngle) * 3.1415 / 180
						about: trachelShape position.
	trachelShape translateTo: delta.
	