popup
testPopupAndGroup
	| v el p es |
	v := RTView new.
	el := (RTBox new size: 20) element.

	p := [ :g :e |  
		es := (RTBox new size: 15; color: (Color red alpha: 0.5)) elementsOn: (1 to: 10).
		RTGridLayout on: es.
		g addAll: es ].

	el @ (RTPopup new group: p).
	v add: el.
	
	self assert: v numberOfElements equals: 1.
	el announce: (TRMouseEnter new position: 0 @ 0; shape: el trachelShape).
	self assert: v numberOfElements equals: 11.

	self assert: v canvas fixedShapes first position asIntegerPoint = (22@22)
	