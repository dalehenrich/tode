accessing
fontName: aFontName
	"Set the font name used by the label. You can check the expression
		FontChooser new fontListStrings.
	to know the different font installed on the system"
	fontName := aFontName.
	font := self getFontNamed: fontName ForSize: fontSize.