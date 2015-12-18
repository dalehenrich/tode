examples
withColorPalette

	"RTAxisAdaptedBuilderExample new withColorPalette"
	| c b |
	c := RTColorPaletteExample new exampleSequentialPalette.

	b := RTAxisAdaptedBuilder new.
	b view: c view.
	b margin: 20.
	b objects:  c view elements.
	b build.
	^ b view.
