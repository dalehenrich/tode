utility
createParentMenu: aTitle background: aColor highlightColor: aColor2
	| lbl index menu |
	
	index := view canvas fixedShapes 
						inject: 0 into: [ :s :e | s max: (e encompassingRectangle topRight x + 10) ].
						
	lbl := TRLabelShape new text: aTitle; translateLeftTo: (index +20) @ 20.
	lbl color: Color black.
	view canvas addFixedShape: lbl.
	
	menu := RTMenu new view: view; label: lbl; menuLabelBackgroundShapeAndColor: aColor; menuBackgroundColor: aColor; highlightColor: aColor2.
	self addParentMenu: menu.
	lbl element: (menu).
	
	lbl element labelBackground when: TRMouseEnter do: [ :event | self enterSubmenuOf: lbl].
	lbl element labelBackground when: TRMouseClick do: [ :e | self showSubmenuOf: lbl].
	
	lbl element labelBackground when: TRMouseLeave do: [ :e |	
		| anim |
		lbl element isLocked ifFalse: [ 
			anim := RTNopAnimation new
				waitFor: 0.1 after: [ 
					closingSubmenuFlag ifTrue: [ 
						lbl element hideItems.
						lbl element endHighlight
						]
					].
			view addAnimation: anim.
			self signalUpdate.
			]
		].
		
	^ lbl