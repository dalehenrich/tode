tests
testRemovingColumn

	tab input: 'France	20	toremove
Germany	80	toremove'.
	tab removeColumn: 3.
	self assert: (tab values = #( #('France' '20') #('Germany' '80')))