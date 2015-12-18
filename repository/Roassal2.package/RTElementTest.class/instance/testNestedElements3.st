nested elements
testNestedElements3
	| added v classShape es |
	added := RTGroup new.
	v := RTView new.
	v @ RTDraggableView.

	classShape := RTCompositeShape new. 
	classShape add: (RTLabel new).
	classShape add: (RTBox new color: Color lightGreen).
	classShape add: (RTBox new color: Color lightRed).
	classShape vertical.

	es := classShape elementsOn: (Array with: RTShape).
	v addAll: es.

	RTNest new
		layout: RTGridLayout new;
		for: es inShape: #second add: [ :group :model |
			group addAll: (RTBox elementsOn: model instVarNames).
			added addAll: group
		].

	RTNest new
		layout: RTGridLayout new;
		for: es inShape: #third add: [ :group :model |
			group addAll: (RTBox elementsOn: model rtmethods).
			added addAll: group
		].
	
	self assert: es first nestedElements equals: added