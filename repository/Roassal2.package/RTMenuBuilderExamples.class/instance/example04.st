examples
example04

	"
	self new example04
	"
	| v b menus withBorder withBackground text shape |
	v := RTView new.
	withBorder := false.
	withBackground := true.
	text := 'test'.
	shape := TREllipseShape.
	b := RTMenuBuilder new view: v.
	
	b menu: 'add element' callback: [ 
		| e  s |
		
		e := RTLabel elementOn: text.
		v add: e. 
		RTVerticalLineLayout on: v elements.
		s := shape new extent: e encompassingRectangle extent.
		s color: (withBackground ifTrue: [Color green] ifFalse: [Color transparent]).
		s strokePaint: (withBorder ifTrue: [Color black] ifFalse: [nil]).
		TRConstraint move: s onTheCenterOf: e.
		v canvas addShape: s.
		s pushBack.
		v canvas signalUpdate ].
	b menu: 'Text' callback: [ text := text,'test'. ].
	

	menus := Array with: 
		('Ellipse'->[:m | shape := TREllipseShape ]) with:
		('Box'->[:m | shape := TRBoxShape]).
	
	menus := b menu: 'Shape' subcheckmenus: menus background: Color red.
	RTMenuGroup on: menus.
	menus first selected: true.
	
	menus := Array with:  
		('with background'->[:m | withBackground := m selected]) with:
		('with border'->[:m | withBorder := m selected]) .
	menus := b menu: 'opions' subcheckmenus: menus background: Color green.
	menus first selected: true.
	v open.