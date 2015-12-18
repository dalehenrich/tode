public
menu: aTitle background: aColor highlightColor: aColor2 callback: callback 
	"Return a trachel shape, in which the callback has been set up"
	| lbl index |
	
	self configureViewEvents.
	
	index := view canvas fixedShapes 
						inject: 0 into: [ :s :e | s max: (e encompassingRectangle topRight x + 10) ].
	lbl := TRLabelShape new text: aTitle; translateLeftTo: (index +20) @ 20.
	lbl color: Color black.
	view canvas addFixedShape: lbl.
	lbl element: (RTMenu new view: view; label: lbl; menuBackgroundColor: aColor; buttonLabelBackgroundShapeAndColor: aColor; highlightColor: aColor2 ).
	
	lbl when: TRMouseClick do: [ :event | callback value.].
	lbl when: TRMouseEnter do: [ :event | closingSubmenuFlag := false. lbl element executeHighlight; executeTextHighlight. self signalUpdate. ].
	lbl when: TRMouseLeave do: [ :event | lbl element endHighlight. self signalUpdate. ].

	^ lbl