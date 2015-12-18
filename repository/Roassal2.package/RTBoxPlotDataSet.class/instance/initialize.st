initialization
initialize
	super initialize.
	self noDot.
	self showMean: false.
	self x: [ :m | m isNumber ifTrue: [ m ] ifFalse: [ builder datasets indexOf: self ] ].
	boxWidth := [ builder extent x / (builder datasets size * 1.2) ].
	boxShape := RTShapeBuilder new.
	boxShape rectangle.
	boxLineShape := RTShapeBuilder new.
	boxLineShape rectangle color: Color black.
	meanShape := RTShapeBuilder new.
	meanShape circle size: [:e | (boxWidth rtValue: e)* 0.5]; color: Color black.
	outlierShape := RTShapeBuilder new.
	outlierShape circle; color: (Color black alpha: 0.5); size: [ :e | (boxWidth rtValue: e) * 0.5 ].