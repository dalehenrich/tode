tests
testBelow

	| view element lb |
	view := RTView new.
	element := (RTEllipse new size: 30) element.
	view add: element.

	lb := RTLegendBuilder new.
	lb view: view.
	lb below.
	lb addText: 'Hello world'.
	lb build.
	
	self assert: view numberOfElements equals: 3.
	self assert: view elements first shape class == RTEllipse.
	self assert: view elements third shape class == RTLabel.
	self assert: view elements first position y < view elements third position y.