menu
addMenu: aTitle callback: aBlock
	| lbl index |
	index := fixedShapes inject: 0 into: [ :s :e | s max: (e encompassingRectangle topRight x + 10) ].
	lbl := TRLabelShape new text: aTitle; translateLeftTo: index @ 20.
	lbl color: Color black.
	lbl when: TRMouseClick do: [ :event | aBlock value ].
	lbl when: TRMouseEnter do: [ :event | lbl color: Color blue. self signalUpdate ].
	lbl when: TRMouseLeave do: [ :event | lbl color: Color black. self signalUpdate ].
	self addFixedShape: lbl