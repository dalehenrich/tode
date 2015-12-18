sources
exampleResizingElements
| v es resizeAnimation shape normalizer |
v := RTView new.
v @ RTDraggableView.
normalizer := RTMultiLinearColor new.
shape := RTBox new size: #yourself; color: [ :value | (normalizer level: (value / 100)) alpha: 0.4 ].
es := shape elementsOn: (1 to: 100 by: 10).
v addAll: es.

v canvas addMenu: 'Press me!' callback: [ 
	es do: [ :e | 
		resizeAnimation := 
			RTResizeMove new 
				toExtent: (100 - e model) @ (100 - e model) on: e.
		e model: (100 - e model).
		v addAnimation: resizeAnimation ] ].
v addAnimation: (RTLayoutAnimation new elements: es; yourself).


	^ v