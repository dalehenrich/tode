sources
exampleForce
	| b |
	b := RTMondrian new.

	b shape circle size: 30.
	b nodes: (RTShape withAllSubclasses).

	b shape arrowedLine color: Color black; withShorterDistanceAttachPoint.
	b edges connectFrom: #superclass.
	b layout force charge: -500; nbIterations: 50.

	b build.
	^ b view