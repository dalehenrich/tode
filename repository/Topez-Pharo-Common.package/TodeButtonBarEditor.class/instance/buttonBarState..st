accessing
buttonBarState: anObject
	buttonBarState = anObject
		ifFalse: [ 
			buttonBarState := anObject.
			self changed: #state ]