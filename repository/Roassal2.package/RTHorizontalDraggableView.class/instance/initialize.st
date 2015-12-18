initialize
initialize

	super initialize.
	self constraint: [ :aView :point | 
		| p |
		p := aView canvas camera position.
		"We go to the right"
		(point x > 0) 
			ifTrue: [ 
				(aView elements anySatisfy: [ :e | 
					e position x > p x ]) 
						ifTrue: [ point x @ 0 ] ifFalse: [ 0 @ 0 ] ]
			ifFalse: [ 
				(aView elements anySatisfy: [ :e | 
					e position x < p x ]) 
						ifTrue: [ point x @ 0 ] ifFalse: [ 0 @ 0 ] ]
				
					
					]