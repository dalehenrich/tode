utility
showSubmenuOf: lbl
	| menu  labels |
	menu := lbl element.
	
	"Check if submenu is locked"
	menu isLocked
		ifTrue: [ 
			menu hideItems.
			menu endHighlight.
			self signalUpdate.
			 ^ self].
		
	"We mark the submenu as locked" 
	menu isLocked: true.
	menu executeLockHighlight.
	menu isOpen
		ifFalse: [ 
	
	"We mark the submenu as open" 
		menu hideAll.
		menu isOpen: true.

		menu executeLockHighlight.
	
		labels := menu items collect: [ :item | | m |
			m := nil.
			m := self menu: item label background: (Color white alpha:0) callback: [item execute: m].
			item menu: m.
			m 
		].

		labels doWithIndex: [ :l :i | | p |
			p := ((lbl position x) + (l width/2) - (lbl width/2) + 5)@(lbl position y + (l height*i) +3.5).
			l translateTo: p.
		].
	menu update.
	].
	
	self signalUpdate.
