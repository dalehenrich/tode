utility
enterSubmenuOf: lbl
	| menu labels|
	
	menu := lbl element.
	
	"We mark the submenu as open" 
	(menu isLocked) ifTrue: [ ^ self signalUpdate].
	menu hideAll.
	menu isLocked: false.
	menu isOpen: true.
	
	menu executeHighlight.
	
	labels := menu items collect: [ :item | | m |
		m := nil.
		m := self menu: item label background: (Color white alpha:0) callback: [item execute: m].
		item menu: m.
		m ].

	labels doWithIndex: [ :l :i | | p |
		p := ((lbl position x) + (l width/2) - (lbl width/2) + 5)@(lbl position y + (l height*i) +3.5).
		l translateTo: p."((lbl position x) + (l width/2) - (lbl width/2) )@(lbl position y + (l height*1)).
		view addAnimation: (RTLinearMove to: p during: 0.2 on: l)."
	].

	menu update.
	self signalUpdate.
		
	lbl element menuBackground when: TRMouseEnter do: [ :e | 
				closingSubmenuFlag := false.
				self signalUpdate].
			
	lbl element menuBackground when: TRMouseLeave do: [ :e | 
			| anim |
			closingSubmenuFlag := true.
			anim := RTNopAnimation new
				waitFor: 0.1 after: [ 
					lbl element isLocked ifFalse: [
						closingSubmenuFlag ifTrue: [  
							lbl element hideItems.
							lbl element endHighlight.
							]
						]
					].
			view addAnimation: anim.
			self signalUpdate
			].