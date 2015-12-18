sources
exampleSystemComplexity02
| b |
b := RTMondrian new.

b shape rectangle
	width: #numberOfVariables;
	height: #numberOfMethods.

b nodes: RTObject withAllSubclasses.

b edges 
	connectToAll: #subclasses.

b normalizer
	normalizeColor: #numberOfLinesOfCode using: (Array with: Color green with: Color red) using: #ln.
	
b layout tree.
b build.
^ b
