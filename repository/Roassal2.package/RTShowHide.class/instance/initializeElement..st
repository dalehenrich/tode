hooks
initializeElement: element
	element
		when: TRMouseClick
		do: [ :e | 
			(element attributes includesKey: #rthide) ifTrue: [ 
				self doUnhighlight: element.
				element attributes removeKey: #rthide ] 
			ifFalse: [ 
				self doHighlight: element.
				element attributes at: #rthide put: true.  ].
			
			e signalUpdate ].
	