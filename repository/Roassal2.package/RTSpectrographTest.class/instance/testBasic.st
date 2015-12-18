tests
testBasic

	b objects: #(1 2 3).
	b lineBlock: [ :v | (1 to: v) ].
	b highlight: [ :v1 :v2 | v2 odd ].
	b build.
	
	self assert: b view numberOfElements equals: 1 + 2 + 3