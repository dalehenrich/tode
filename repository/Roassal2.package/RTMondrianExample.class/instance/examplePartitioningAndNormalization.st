sources
examplePartitioningAndNormalization
| b classes |
classes := RTLayout withAllSubclasses, RTBuilder withAllSubclasses, RTShape withAllSubclasses.

b := RTMondrian new.
b shape circle size: 5.
b nodes: classes.
b edges connectFrom: #superclass.

b normalizer
	objects: classes;
	normalizeSize: #numberOfMethods min: 5 max: 30;
	normalizeColor: #numberOfLinesOfCode using: (Array with: Color green with: Color red ) using: #sqrt.
	

b layout
		for: [ :c | c includesBehavior: RTLayout ] use: RTForceBasedLayout new;
		for: [ :c | c includesBehavior: RTBuilder ] use: RTForceBasedLayout new;
		for: [ :c | c includesBehavior: RTShape ] use: RTForceBasedLayout new;
		flow.
b build.
	^ b view