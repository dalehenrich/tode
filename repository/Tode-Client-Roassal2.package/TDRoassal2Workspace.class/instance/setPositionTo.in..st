as yet unclassified
setPositionTo: aRTGroup in: aView
	| cut |
	cut := ((aView canvas extent y) / (tools size)).
	
	aRTGroup doWithIndex: [:e :i |
		e translateTo: (aView canvas extent x /2)@((i * cut) - (cut / 2)) 
		].
	
