svg
addButtons
	self interactions
		do: [ :l | 
			l
				do: [ :i | 
					(i type beginsWith: 'button')
						ifTrue: [ 
							(buttons includes: i fixedName)
								ifFalse: [ 
									buttonStart := i addSelf: stream startingPoint: buttonStart.
									buttons add: i fixedName ] ] ] ].
	stream nextPutAll: String cr