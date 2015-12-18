actions
animatedPoint: aPoints
	| pnts |
	pnts := aPoints asSortedCollection.
	self evaluator: [ :t |
		| inicial fin |
		inicial := nil.
		fin := nil.
		
		pnts do:[ :e | 
	 	    e key <= t 
			ifTrue: [ inicial:= e ] 
			ifFalse:[fin isNil ifTrue:[fin:= e] ]
	 	].
		inicial value interpolateTo: fin value at: t.
	 ].