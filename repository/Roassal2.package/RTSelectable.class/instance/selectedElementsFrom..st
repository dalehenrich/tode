actions
selectedElementsFrom: element
	^ element view elements select: [ :e | e attributeAt: #isSelected ifAbsent: [ false ] ]