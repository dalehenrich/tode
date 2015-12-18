accessing
shapesDo: aBlock
	"collect:thenDo: does not create temporary collection > improves performance"

	shapeAndOffsets collect: #first thenDo: aBlock