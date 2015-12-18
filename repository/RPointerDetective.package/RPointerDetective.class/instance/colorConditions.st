as yet unclassified
colorConditions

	colorConditionBlocks keysAndValuesDo: [ :col :block | 
		builder shape if: [ :nde | block rtValue: (nde wrapper wrappedObject) ] fillColor: (col)
		].
		
	builder shape			
		if: [ :nde | nde isOnLimit ] fillColor: (Color red alpha: 0.5);
		if: [ :nde | nde isTarget ] fillColor: (Color green alpha: 0.5).