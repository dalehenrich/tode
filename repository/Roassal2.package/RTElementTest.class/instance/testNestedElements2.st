nested elements
testNestedElements2
	| nested e v |
	v := RTView new.
	e := RTBox element.
	v add: e.
	RTNest new
		for: (Array with: e) add: [ :group :model |
			nested := RTBox elementsOn: (1 to: 5).
			group addAll: nested
		].
	
	self assert: e nestedElements equals: nested