sources
exampleNormalization

		| b |
	b := RTMondrian new.

b nodes: RTObject withAllSubclasses.

b normalizer
	objects: RTObject withAllSubclasses;
	normalizeSize: #numberOfMethods min: 5 max: 30 using: [:value | (value + 1) ln ];
	normalizeColor: #numberOfMethods using: (Array with: Color gray with: Color blue with: Color red ) using: [ :value | (value + 1) ln ].
	
b layout flow.
b build.
^ b