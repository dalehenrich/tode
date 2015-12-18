rendering
renderIn: view using: timelineBuilder

	| translator |
	shapeBuilder 
		height: [ :obj | timelineBuilder extent y / timelineBuilder numberOfLines - self gapBetweenTimeLines ].
		
	elements := shapeBuilder elementsOn: objects.
	interactionBuilder setUpElements: elements.
	view addAll: elements.
	
	"We set the width of the elements"
	RTMetricNormalizer new
		elements: elements;
		normalizeWidth: [ :anObject | (end rtValue: anObject) - (start rtValue: anObject) ]
			min: self minimumEventWidth
			max: timelineBuilder extent x
			minValue: 0
			maxValue: globalMax.

	"For the location"
	translator := RTDirectLayoutTranslator new.
	elements do: [ :e | 
		| nx ny indexY |
		nx := ((start rtValue: e model) / globalMax * timelineBuilder extent x).
		indexY := timelineBuilder indexOfLineIdentifier: (lineIdentifier rtValue: e model).
		ny := (timelineBuilder getPixelPositionOf: 0 @ indexY) y.
		translator translateTopLeftOf: e to: nx @ ny ].
