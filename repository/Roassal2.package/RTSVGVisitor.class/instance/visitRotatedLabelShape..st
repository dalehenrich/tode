visitor
visitRotatedLabelShape: aRotatedLabel
	| color rectangle position text angle svgE|
	color := aRotatedLabel color.	
	rectangle := aRotatedLabel encompassingRectangle.
	position := self alignPoint: ((rectangle topLeft x + (rectangle width/4)) @ rectangle center y).
	text := aRotatedLabel text.
	angle := aRotatedLabel angle.
	svgE := RTSVGText new element: aRotatedLabel text: text at: position color: color angle: angle.
	svgE addOn: stream using: self.