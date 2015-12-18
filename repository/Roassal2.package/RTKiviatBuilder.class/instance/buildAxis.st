as yet unclassified
buildAxis
"define the blocks of the metrics, divise 360° by the number of total metrics, and call the axis creation according to metrics"
	| angle |
	angle := 0.

	kiviatMetrics doWithIndex: [ :m :i | 
		self axis: (m modelBlock: [ :v | (v*(((i-1) * ((2 * Float pi) / (kiviatMetrics size)))cos))@(v*(((i-1) * ((2 * Float pi) / (kiviatMetrics size)))sin))]; maxSize: axisSize) ].
	
	axisBuilt := true.	