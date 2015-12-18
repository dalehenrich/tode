sources
exampleTreeAndBeziers
| b |
b := RTMondrian new.
b shape circle
	size: 8;
	if: [ :c | '*Line*' match: c name ] fillColor: Color red.

b nodes: TRShape withAllSubclasses, RTShape withAllSubclasses.

b shape line.
b edges
	connectFrom: #superclass.

b shape bezierLineFollowing: #superclass; color: (Color blue alpha: 0.2).

b edges
	objects: TRShape withAllSubclasses, RTShape withAllSubclasses;
	notUseInLayout;
	connectToAll: #dependentClasses.
	
b layout tree.
b build.
^ b