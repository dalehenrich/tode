hooks
initializeElement: aView

	aView canvas 
		when: TRMouseDragging 
		do: [ :e |
			| translation |
			translation := constraint value: aView value: e step negated.
			aView canvas camera translateBy: translation / aView canvas camera scale.
			e signalUpdate ]