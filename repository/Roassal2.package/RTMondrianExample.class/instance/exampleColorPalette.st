sources
exampleColorPalette
| b |
b := RTMondrian new.
b shape circle
	size: 20.

b nodes: RTObject withAllSubclasses.

b normalizer
	normalizeColor: #numberOfLinesOfCode using: (ColorPalette sequential colors: 9 scheme: 'PuBu') using: #ln.
	
b layout grid.
b build.
^ b