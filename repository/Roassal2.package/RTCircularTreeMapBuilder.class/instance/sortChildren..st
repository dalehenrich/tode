layout
sortChildren: children
	children sort: [ :a :b | (self weightOf: a) > (self weightOf: b) ].