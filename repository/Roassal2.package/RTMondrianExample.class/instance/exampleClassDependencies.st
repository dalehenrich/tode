sources
exampleClassDependencies
| b |
b := RTMondrian new.
b shape circle size: 8.
b nodes: RTObject withAllSubclasses.

b shape line color: (Color gray alpha: 0.2).

b edges
	connectToAll: #dependentClasses.

b normalizer
	normalizeSize: #numberOfMethods using: #sqrt;
	normalizeColor: [ :c | c withAllSuperclasses indexOf: RTObject ] using: (Array with: Color red with: Color gray);
	alphaColor: 0.4.
	
b layout forceWithCharge: -400.
b build.
^ b