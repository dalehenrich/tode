A RTLabelled  adds a label above an element. The label may be particularized using #text: in the default string representation is not sufficient. Consider:

E.g., 
v := RTView new.
e := (RTEllipse new size: 30) elementOn: 42.
v add: e.
e @ (RTLabelled new text: [ :value | 'My value is ', value asString ]).
v

Instance Variables
	canvas:		<Object>
	color:		<Object>
	highlightable:		<Object>
	lowColor:		<Object>
	offsetOnEdge:		<Object>
	position:		<Object>
	text:		<Object>

canvas
	- xxxxx

color
	- xxxxx

highlightable
	- xxxxx

lowColor
	- xxxxx

offsetOnEdge
	- xxxxx

position
	- xxxxx

text
	- xxxxx
