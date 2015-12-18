tests
testGetValues01
	| ds |
	ds := RTDataSet new.
	ds points: #(3 4 5).

	self assert: ds getValuesX equals: #(3 4 5).
	self assert: ds getValuesY equals: #(3 4 5).	