public - layout
relayout
	"This methods places the contained shapes according to the specified layout"
	| first |
	first := self firstShape.
	shapeAndOffsets do: [ :shapeAndOffset | 
		shapeAndOffset first translateBy: first position + shapeAndOffset second ]
