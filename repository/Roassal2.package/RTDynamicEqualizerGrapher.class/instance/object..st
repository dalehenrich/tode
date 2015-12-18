public - generation
object: anObject
	| values |
	values := metrics collect: [ :tupple | tupple second rtValue: anObject ].
	barElements ifNil: [ 
		barElements := self elementsOn: values.
		RTHorizontalLineLayout on: barElements.
		view addAll: barElements.
		].
	
	RTMetricNormalizer new
		elements: barElements;
		normalizeHeight: #yourself min: self minY max: self maxX.
		
	view signalUpdate