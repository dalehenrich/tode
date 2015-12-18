initialization
blinkElement: element
	element when: TRMouseDragging do: [ :evt | 
		RTBlink on: element. 
		elementBeingDragged := element ]
