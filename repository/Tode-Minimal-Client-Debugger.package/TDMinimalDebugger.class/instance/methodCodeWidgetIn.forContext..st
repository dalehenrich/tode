building presentations
methodCodeWidgetIn: composite forContext: aContext

	^ composite minimalTodeMethod
		title: 'Source';
		format: [ aContext sourceCode ]
