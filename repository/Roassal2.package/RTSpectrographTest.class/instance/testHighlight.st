tests
testHighlight

	b objects: (Array with: 10).
	b lineBlock: [ :v | 1 to: v ].
	b highlight: [ :root :v | v = 2 ].
	b build.
	self assert: (b view elementFromModel: #(10 1)) trachelShape color ~= Color red.
	self assert: (b view elementFromModel: #(10 2)) trachelShape color = Color red.
	
