sources
exampleBezierLines

| b lb |
b := RTMondrian new.

b shape circle color: (Color red alpha: 0.4).
b nodes: Collection withAllSubclasses.
b edges connectFrom: #superclass.

b shape bezierLineFollowing: #superclass; color: (Color blue alpha: 0.1).
b edges
	notUseInLayout;
	connectToAll: #dependentClasses.

b normalizer
	normalizeSize: #numberOfMethods min: 5 max: 50.

b layout force.
b build.

lb := RTLegendBuilder new.
lb view: b view.
lb addText: 'Circle = classes, size = number of methods; gray links = inheritance;'.
lb addText: 'blue links = dependencies; layout = force based layout on the inheritance links'.
lb build.

^ b view