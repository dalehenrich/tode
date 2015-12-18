tests
testSelectable
	| e |
	self assert: selectedElements isEmpty.
	e := RTElement new.
	self assert: (selectable selectionCallback value: e) equals: e