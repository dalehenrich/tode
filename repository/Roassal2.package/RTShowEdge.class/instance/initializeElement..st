hooks
initializeElement: element
	element
		when: TRMouseEnter
		do: [ :e | 
			self doShowEdges: element.
			e signalUpdate ].
	element
		when: TRMouseLeave
		do: [ :e | 
			self doHideEdges: element.
			e signalUpdate ]