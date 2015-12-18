as yet unclassified
ifRoute: aConditionBlock lineColor: aColorBlock
	^ self ifElement: [ :e | aConditionBlock rtValue: e model ] fillColor: aColorBlock.