sources
exampleColorInGraph
| b |
b := RTMondrian new.

b shape circle.
b nodes: ((RTObject withAllSubclasses, TRObject withAllSubclasses)).

b shape line color: (Color gray alpha: 0.2).
b edges 
	moveBehind;
	connectToAll: #dependentClasses.
b layout forceWithCharge: -80.

b normalizer
	normalizeSize: [ :c | c dependentClasses size ]
		min: 5 max: 25 using: #log;
	normalizeColor: [ :c | c dependentClasses size ] 
		using: (Array with: Color green with: Color  red ) using: #log;
	alphaColor: 0.4.
b build.
^ b