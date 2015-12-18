menu
addMenuAsSVG: aTitle scale: scaleAsFloat callback: aBlock
	| icon index |
	index := fixedShapes inject: 0 into: [ :s :e | s max: (e encompassingRectangle topRight x + 10) ].
	icon := TRSVGPath new path: aTitle.
	icon scaleBy: scaleAsFloat.
	icon color: Color black.
	icon when: TRMouseClick do: [ :event | aBlock value ].
	icon when: TRMouseEnter do: [ :event | icon color: Color blue. self signalUpdate ].
	icon when: TRMouseLeave do: [ :event | icon color: Color black. self signalUpdate ].
	self addFixedShape: icon