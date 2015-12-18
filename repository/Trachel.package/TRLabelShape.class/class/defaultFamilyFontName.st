configuration
defaultFamilyFontName
	"Default Family font"
	| fontList |
	fontList := FontChooser new fontListStrings.
	fontList ifEmpty: [ ^ StandardFonts defaultFont familyName ].
	(fontList includes: 'Source Sans Pro') ifTrue: [ ^ 'Source Sans Pro' ].
	(fontList includes: 'DejaVu Sans') ifTrue: [ ^ 'DejaVu Sans' ].
	
	^ StandardFonts defaultFont familyName