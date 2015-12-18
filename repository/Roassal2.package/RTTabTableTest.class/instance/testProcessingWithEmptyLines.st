tests
testProcessingWithEmptyLines

	tab input: 'France	20
Germany	80
'.
	tab convertColumn: 2 to: #asInteger.
	self assert: (tab values = #( #('France' 20) #('Germany' 80)))