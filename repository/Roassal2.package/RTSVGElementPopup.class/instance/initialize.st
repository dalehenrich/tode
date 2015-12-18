initialization
initialize
	super initialize.
	element := [ :m | (RTElement  on: m) + (RTBox new color: Color blue; yourself)]