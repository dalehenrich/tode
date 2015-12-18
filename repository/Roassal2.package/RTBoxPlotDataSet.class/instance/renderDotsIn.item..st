hooks
renderDotsIn: view item: item
	| elements |
	elements := dotBuilder elementsOn: points.
	builder view addAll: elements.
	interaction setUpElements: elements.
	
	RTMetricNormalizer new
		elements: elements;
		normalizeX: [ :m | x rtValue: model ]
			min: 0 
			max: builder extent x
			minValue: minX
			maxValue: maxX.
	RTMetricNormalizer new
		elements: elements;
		normalizeY: [ :m | y rtValue: m ]
			min: 0
			max: builder extent y negated
			minValue: minY
			maxValue: maxY.
			
	elementActions do: [ :act | act rtValue: elements ].
	self renderLinesFor: elements in: view.