sources
exampleLayoutPartition
| b classes |
classes := (TRPlatform current packageNamed: 'Roassal2') definedClasses.

b := RTMondrian new.
b shape circle size: 5.
b nodes: classes.
b edges connectFrom: #superclass.

b layout
		for: [ :c | (classes intersection: (Array with: c superclass), c subclasses) notEmpty ] use: RTTreeLayout new;
		for: [ :c | (classes intersection: (Array with: c superclass), c subclasses) isEmpty ] use: RTGridLayout new;
		horizontalLine.
b build.
	^ b view