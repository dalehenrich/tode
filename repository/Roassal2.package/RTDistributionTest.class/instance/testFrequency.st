tests
testFrequency
	| set d f |
	set := #(3 31 17 17 20 50 9 32 47 2 8 36 30 33 49 31 18 25 21 31 1 37 1 40 46 16 18 20 30 29 4 49 31 45 25 44 12 16 23 27 5 41 20 23 29 17 7 20 13 11).
	d := RTDistribution on: set.
	
	self assert: d amountOfDifferentValues = set asSet size.
	
	f := d frequency.
	self assert: f size = set asSet size.