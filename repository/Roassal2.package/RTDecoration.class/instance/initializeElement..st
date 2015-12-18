hooks
initializeElement: aRTElement 
	aRTElement 
		when: TRMouseEnter 
		do: [ :anEvent | 
			self displayDecoration: aRTElement.
			anEvent signalUpdate ].
	
	aRTElement 
		when: TRMouseLeave 
		do: [ :anEvent |
			self hideDecoration: aRTElement.
			anEvent signalUpdate ]