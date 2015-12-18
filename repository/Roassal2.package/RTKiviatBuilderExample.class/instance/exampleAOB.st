sources
exampleAOB

	| b lb fruits |
	b := RTKiviatBuilder new.
	fruits := RTKiviatFruitExample fruits.
	b objects: fruits.
	b shape circle color: [ :f | f kiviatNode named color ]; size: 10.
	RTKiviatFruitExample rtmethods do: [ :met | 
		met protocol = #metrics ifTrue: [ 
			b addMetric: met selector ] ].
	b activateAxisTitle.
	b activatePolygons.
	b build.
	
	lb := RTLegendBuilder new.
	lb view: b view.
	lb addText: 'Fruit example '.
	fruits do: [ :f | lb addColor: f color text: f name ].
	lb build.
	
	^ b view 