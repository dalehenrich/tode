sources
exampleResizingGroup

| elements v handle callback |
elements := (RTEllipse new size: (30 atRandom)) elementsOn: (1 to: 30).
RTForceBasedLayout on: elements.

v := RTView new.
v addAll: elements.

handle := (RTBox new size: 20; color: Color red) element.
v add: handle.
handle @ RTDraggable.
TRConstraint move: handle onTheRightBelowOf: elements.

callback := TRTranslationCallback new block: [ :shape :step | 
	elements extent: (handle encompassingRectangle topLeft - elements encompassingRectangle topLeft). v signalUpdate ].
handle trachelShape addCallback: callback.


	^ v