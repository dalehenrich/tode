sources
exampleBezierLinesAndLayout


| classes b |
classes := RTShape withAllSubclasses, TRShape withAllSubclasses.

b := RTMondrian new.
b shape circle.
b nodes: classes.
b edges connectFrom: #superclass.

b shape bezierLineFollowing: #superclass;
	 color: (Color blue alpha: 0.2).
b edges notUseInLayout; connectToAll: #dependentClasses.
b normalizer
	normalizeSize: #numberOfMethods using: #sqrt;
	normalizeColor: #numberOfMethods using: (Array with: Color green with: Color red) using: #sqrt.
b layout cluster.
b build.
^ b