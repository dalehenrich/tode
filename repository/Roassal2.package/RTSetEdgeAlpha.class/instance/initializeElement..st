hooks
initializeElement: element
	self setLowAlphaFor: element.
	element
		when: TRMouseEnter
		do: [ :e | 
			self setHighAlphaFor: element.
			e signalUpdate ].
	element
		when: TRMouseLeave
		do: [ :e | 
			self setLowAlphaFor: element.
			e signalUpdate ]