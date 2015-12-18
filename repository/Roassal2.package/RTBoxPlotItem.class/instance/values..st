accessing
values: anArray

	| upperOutlierThreshold lowerOutlierThreshold upperFaroutThreshold lowerFaroutThreshold |
	values := anArray sort.
	values size < 3 ifTrue: [ 
		self emptyValues.
		^ self ].
	mean := self calculateMean.
	median := self calculateMedian.
	q1 := self calculateQ1.
	q3 := self calculateQ3.
	interQuartileRange := q3 - q1.
	
	upperOutlierThreshold := q3 + (interQuartileRange * 1.5).
	lowerOutlierThreshold := q1 - (interQuartileRange * 1.5).
	
	upperFaroutThreshold := q3 + (interQuartileRange * 2.0).
	lowerFaroutThreshold := q1 -(interQuartileRange * 2.0).
	
	minRegularValue := Float infinity.
	maxRegularValue := Float infinity negated.
	minOutlier := Float infinity.
	maxOutlier := Float infinity negated.
	outliers := OrderedCollection new.
	
	values do: [ :value |
		value > upperOutlierThreshold ifTrue: [
			outliers add: value.
			((value > maxOutlier) and: [value <= upperFaroutThreshold ]) ifTrue: [ 
				maxOutlier := value ] ] ifFalse: [ 
		value < lowerOutlierThreshold ifTrue: [ 
			outliers add: value.
			((value < minOutlier ) and: [ value >= lowerFaroutThreshold ] ) ifTrue: [ 
				minOutlier := value ]
			 ] ifFalse: [ 
			minRegularValue := minRegularValue min: value.
			maxRegularValue := maxRegularValue max: value. ] ].
		
		minOutlier := minOutlier min: minRegularValue.
		maxOutlier := maxOutlier max: maxRegularValue.
	 ] 
	
