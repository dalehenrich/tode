initialization
initialize
	super initialize.
	eventClass := TREvent. 
	toObject := [ :element | element view ]