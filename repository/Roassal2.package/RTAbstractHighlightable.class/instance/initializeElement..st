hooks
initializeElement: element
	element
		when: TRMouseEnter
		do: [ :e | 
			self doHighlight: element.
			e signalUpdate ].
	element
		when: TRMouseLeave
		do: [ :e | 
			self doUnhighlight: element.
			e signalUpdate ]