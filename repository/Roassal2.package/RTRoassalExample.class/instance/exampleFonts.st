sources
exampleFonts

	"
	self new exampleFonts
	"
| v fontNames shape es |
v := RTView new.
fontNames := TRPlatform current fontListStrings allButFirst.

shape := RTLabel new fontName: #yourself; text: #yourself.

es := shape elementsOn: fontNames.
es @ RTPopup.

v addAll: es.
RTVerticalLineLayout on: v elements.

	^ v