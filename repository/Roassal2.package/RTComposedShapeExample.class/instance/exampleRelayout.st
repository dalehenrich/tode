sources
exampleRelayout

	| s b1 b2 b3 view e |
	s := RTCompositeShape new.
	b1 := RTBox new color: Color green.
	b2 := RTBox new color: Color blue; size: 20.
	b3 := RTLabel new.
	s add: b1.
	s add: b2.
	s add: b3.
	s horizontal.
	s setAutomaticRelayout.
	
	e := s elementOn: 'click to expand'.
	view := RTView new.
	view add: e.
	
	e @ RTDraggable.
	e @ RTPopup.
	
	e when: TRMouseClick do: [ :ev |
		e trachelShape shapes second extent: 45 @ 45.
		e trachelShape shapes third text: 'hello'.
		view signalUpdate.
	].
	^ view 