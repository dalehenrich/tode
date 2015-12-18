private - bar management
removeExceedingBar	
	allAddedElements size = numberOfBars
		ifTrue: [ 
			allAddedElements first remove.
			allAddedElements do: [ :e | 
				
				"e translateBy: self barWidthWithGap negated @ 0"
				layoutTranslator translate: e by: (self barWidthWithGap negated @ 0).
				"view addAnimation: (RTLinearMove new by: (self barWidthWithGap negated @ 0) during: 0.1 on: e)."
				 ].
			allAddedElements removeFirst ]