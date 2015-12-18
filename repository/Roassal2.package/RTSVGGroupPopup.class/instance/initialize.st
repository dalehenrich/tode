initialization
initialize
	super initialize.
	group := [ :m | RTGroup new add: ((RTElement on: m) + (RTBox new color: Color blue; yourself)); yourself]