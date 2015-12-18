examples
withMondrian2

	"RTAxisAdaptedBuilderExample new withMondrian2"
	| c b |
	c := RTMondrianExample new exampleBezier  .

	b := RTAxisAdaptedBuilder new.
	b view: c view.
	b margin: 20.
	b objects:  c view elements.
	b build.
	^ b view.
