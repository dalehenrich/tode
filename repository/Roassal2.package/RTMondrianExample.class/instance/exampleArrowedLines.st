sources
exampleArrowedLines

| b |
b := RTMondrianViewBuilder new.

b shape circle size: 30.
b nodes: (RTShape withAllSubclasses).

b shape arrowedLine withShorterDistanceAttachPoint.
b edgesFrom: #superclass.
b forceBasedLayout charge: -500; nbIterations: 50.

b build.
^ b view