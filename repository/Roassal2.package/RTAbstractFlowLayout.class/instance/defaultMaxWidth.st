configuration
defaultMaxWidth
	
	^ [ :elements | 
		(elements size < 4) ifTrue: [ (((elements collect: [ :each | each width * each height]) * 2) sum ) + (elements size * (gapSize squared)) ]
			ifFalse: [
			((((elements collect: [ :each | each width * each height]) * 2) sum) + (elements size * (gapSize squared))) sqrt ceiling truncated.
			]
		]