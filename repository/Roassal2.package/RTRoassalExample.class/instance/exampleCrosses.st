sources
exampleCrosses

| v nbOfCrosses n s es |
v := RTView new.

nbOfCrosses := 300. 
n := RTMultiLinearColorForIdentity new objects: (1 to: nbOfCrosses).

s := RTShapeBuilder new cross; current.
s color: n.
es := s elementsOn: (1 to: nbOfCrosses).

"The code above is equivalent to

s := RTMultiCompositeShape new.
s add: (RTBox new height: 10; width: 3). 
s add: (RTBox new height: 3; width: 10).
s color: n.
es := s elementsOn: (1 to: nbOfCrosses).
"

v addAll: es.
RTGridLayout on: es.

	^ v