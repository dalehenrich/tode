configuration
metric: aBlock color: aColor height: anHeight
	| boxes |
	boxes := elements collect: [ :el | 
		| b |
		b := (RTBox new height: anHeight; color: aColor) elementOn: el model.
		b @ (RTPopup text: [ :model | aBlock rtValue: model ]).
		b ].
	RTMetricNormalizer new 
		elements: boxes;
		normalizeWidth: aBlock min: 2 max: width minValue: 0.
 		
	elements with: boxes do: [ :e :b | 		 
		TRConstraint move: b onTheRightOf: e.
		b translateBy: 2 @ 0. ].
	view addAll: boxes.