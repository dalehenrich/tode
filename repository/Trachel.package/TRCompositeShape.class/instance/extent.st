accessing
extent
	| res |
"	self shapesDo: [ :s | s translateTo: 0 @ 0 ]."
		
	shapeAndOffsets do: [ :tuple | tuple first translateBy: tuple second ].
	res := self encompassingRectangle extent.
	self shapesDo: [ :s | s translateTo: 0 @ 0 ].
	^ res

	"We cannot do that, because we may need to get the extent, without having the elements added (and correctly positioned)"
	"^ self encompassingRectangle extent"