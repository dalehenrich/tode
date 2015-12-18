initialization
initialize
	super initialize.
	view := [ :m | RTView new add: ((RTElement on: m) + (RTBox new color: Color blue; yourself))]