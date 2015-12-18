accessing
fontName: aValueOrAOneArgBlock
	"aValueOrAOneArgBlock is applied on the object model"
	"Set the font name used by the label. You can check the expression
		FontChooser new fontListStrings.
	to know the different font installed on the system"
	self fontNameElement: [ :anElement | aValueOrAOneArgBlock rtValue: anElement model ]