tests
testAddObjectText

	| lb |
	lb := RTLegendBuilder new.
	lb addObject: 'hello world' text: [ :str | str substrings first ].
	lb build.
	
	self assert: lb view numberOfElements equals: 2.
	self assert: lb view elements second model equals: 'hello world'.
	self assert: (lb view elements second shape textFor: lb view elements second) equals: 'hello'.