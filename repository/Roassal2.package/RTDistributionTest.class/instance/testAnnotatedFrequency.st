tests
testAnnotatedFrequency
	| set d f |
	set := #(2 2 2 5 5).
	d := RTDistribution on: set.
	d annotatedFrequency.
	self assert: d amountOfDifferentValues = 2.
	
	f := d annotatedFrequency.
	self assert: f = #(#(3 2) #(2 5))
