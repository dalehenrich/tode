as yet unclassified
axis: aRTKiviatMetric
"creation of a metric axis"
	| config centralPoint allValues |	
	
	allValues := (objects collect: [ :p | (aRTKiviatMetric block)  rtValue: p ]).	
	aRTKiviatMetric maxValue ifNil: [ aRTKiviatMetric maxValue: ( (allValues isEmpty) ifTrue: [ 0 ] ifFalse: [ allValues max ])].
	aRTKiviatMetric minValue: ( (allValues isEmpty) ifTrue: [ 0 ] ifFalse: [ allValues min ]).
		
	config := RTAxisConfiguration new
					builder: self;
					numberOfTicks: 4;
					numberOfLabels: 4;
					minValue: 0;
					maxValue: aRTKiviatMetric maxValue;
					ticksCentered: true;					
					labelConversion: [ :number | number asFloat round: 2 ];
					positionLabel: [ :aLabel :aTick | aLabel translateTo: aTick position + (0 @ 15) ].
					(axisTitle = #activated) ifTrue: [ config title: (aRTKiviatMetric named)].
					
					
	centralPoint := (0@0).
	
	config axisFrom: 0@0 to: (aRTKiviatMetric modelBlock value: (self getNormalizedValue:(aRTKiviatMetric maxValue)  min:0  max:(aRTKiviatMetric maxSize)  minValue:(aRTKiviatMetric minValue) maxValue: (aRTKiviatMetric maxValue))).
	