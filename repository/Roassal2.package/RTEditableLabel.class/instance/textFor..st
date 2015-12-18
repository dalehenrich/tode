rendering
textFor: anElement
	(anElement attributes includesKey: #text) ifFalse: [ 
		anElement attributes at: #text put: (super textFor: anElement) ].
	
	^ anElement attributes at: #text.