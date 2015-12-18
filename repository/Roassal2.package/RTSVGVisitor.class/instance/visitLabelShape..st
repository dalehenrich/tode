visitor
visitLabelShape: aLabel
	| color rectangle position text svgE|
	color := aLabel color.	
	rectangle := aLabel encompassingRectangle.
	position := self alignPoint: ((rectangle topLeft x + (rectangle width/4)) @ rectangle center y).
	text := aLabel text.
	svgE := RTSVGText new element: aLabel text: text at: position color: color.
	svgE addOn: stream using: self.