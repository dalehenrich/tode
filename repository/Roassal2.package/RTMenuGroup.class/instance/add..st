accessing
add: menuitem
	| after |
	items add: menuitem.
	
	after := menuitem after.
	menuitem after: [ :m |
		items do: [:item | item selected: false.
			item rawmenu ifNotNil: [item rawmenu text: item label.
				 item rawmenu signalUpdate] ].
		menuitem selected: true.
		after ifNotNil: [ after value: m ]. ].