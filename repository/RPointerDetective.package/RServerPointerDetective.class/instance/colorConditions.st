as yet unclassified
colorConditions

	self colorConditionBlocks keysAndValuesDo: [ :col :block |
			self builder shape if: [ :nde | 
				| target |
				target := (nde wrapper wrappedObject).
				(block value: target )] fillColor: (col)
			].
	
	self builder shape			
		if: [ :nde | nde isOnLimit ] fillColor: (Color red alpha: 0.5);
		if: [ :nde | nde isTarget ] fillColor: (Color green alpha: 0.5).