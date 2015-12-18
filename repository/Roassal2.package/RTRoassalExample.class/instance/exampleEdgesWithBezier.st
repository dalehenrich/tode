sources
exampleEdgesWithBezier

| b |
b := RTMondrian new.

b shape circle.
b nodes: Collection withAllSubclasses.
b edges moveBehind; connectFrom: #superclass.	

b shape bezierLineFollowing: #superclass; color: (Color blue alpha: 0.4).
b edges 
	notUseInLayout; 
	objects: [ :cls | '*Array*' match: cls name ];
	connectToAll: #dependentClasses.

b layout cluster.

b normalizer 
	normalizeSize: #numberOfMethods min: 5 max: 35 using: #sqrt;
	normalizeColor: #numberOfLinesOfCode using: (Array with: Color blue with: Color red ).

b view restoreCamera.
b build.
^ b view