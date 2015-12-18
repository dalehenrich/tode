sources
exampleColorPalette02
| b |
b := RTMondrian new.
b shape circle
	size: 20.

b nodes: RTObject withAllSubclasses.

b normalizer
	normalizeColor: #numberOfLinesOfCode using: (ColorPalette diverging colors: 11 scheme: 'PRGn') using: #ln.
	
b layout grid.
b build.
^ b