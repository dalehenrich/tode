tests
testGetValues02
	| ds |
	ds := RTDataSet new.
	ds points: #(3 4 5).
	ds x: [ :v | v + 2 ].
	ds y: [ :v | v + 3 ].

	self assert: ds getValuesX equals: #(5 6 7).
	self assert: ds getValuesY equals: #(6 7 8).	