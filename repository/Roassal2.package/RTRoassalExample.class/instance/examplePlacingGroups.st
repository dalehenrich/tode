sources
examplePlacingGroups

| v g1 g2 |
v := RTView new.
g1 := RTGroup new.
g1 addAll: (RTBox new size: 10; elementsOn:( 1 to: 200)).

g2 := RTGroup new.
g2 addAll: ((RTEllipse new size: 15; color: Color red )elementsOn: (RTShape withAllSubclasses)).

v addAll: g1; addAll: g2.

v addAll: (RTEdge buildEdgesFromObjects: RTShape withAllSubclasses from: #superclass to: #yourself scope: g2).

RTGridLayout on: g1.
RTTreeLayout on: g2.

TRConstraint move: g1 onTheRightOf: g2.


	^ v