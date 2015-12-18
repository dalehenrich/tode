hooks
initializeElement: element

	element
		when: TRMouseEnter
		do: [ :event | 
			self createAndShowPopupFor: element event: event ].
	element
		when: TRMouseLeave
		do: [ :event | 
			self removeLastPopup.
			element trachelShape signalUpdate ].
	element
		when: TRMouseDragging
		do: [ :event | 
			self removeLastPopup.
			element trachelShape signalUpdate ]