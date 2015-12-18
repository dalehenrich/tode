as yet unclassified
getNormalizedValue: val min: min max: max minValue: minValue maxValue: maxValue 
"obtain a normalized value from the original value given by a metric calculation according to the size of the axis"
	(val = min) ifTrue: [ ^ min].
	(maxValue = minValue) ifTrue: [ ^ max].
	
 	^ (min + ((max - min) * ( (val - minValue) / (maxValue - minValue)))).