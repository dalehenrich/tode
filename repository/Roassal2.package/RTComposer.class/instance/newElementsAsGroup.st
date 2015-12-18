accessing
newElementsAsGroup
	^ RTGroup withAll: (view elements copyWithoutAll: self allGroupedElements)