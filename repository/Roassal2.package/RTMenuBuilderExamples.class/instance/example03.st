examples
example03

	"
	self new example03
	"
	| v b menus withBorder withText shape |
	v := RTView new.
	withBorder := false.
	withText := false.
	shape := false.
	
	b := RTMenuBuilder new view: v.
	menus := Array with: 
		'with border'->[:m | withBorder := m selected ] with:
		'with text'->[:m | withText := m selected] with:
		'ellipse'->[:m | shape := m selected].
			
	b menu: 'add element' callback: [ 
		| e t s |
		t := withText ifTrue:['Demo'] ifFalse: [ '...' ].
		e := RTLabel elementOn: t.
		
		v add: e. 
		RTVerticalLineLayout on: v elements.
		s := (shape ifTrue: [TREllipseShape] ifFalse: [TRBoxShape])
		 new extent: e encompassingRectangle extent.
		s color: Color green.
		s strokePaint: (withBorder ifTrue: [Color black] ifFalse: [nil]).
		TRConstraint move: s onTheCenterOf: e.
		v canvas addShape: s.
		s pushBack.
		v canvas signalUpdate ].
	menus := b menu: 'options' subcheckmenus: menus background: Color red.
	v open.