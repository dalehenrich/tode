tests
testLegendElement

	| lb |
	lb := RTLegendBuilder new.
	lb addLineColor: Color red text: 'Meaning of this great red line'.
	lb build.
	
	self assert: lb view elements first equals: lb legendElement
