signalling
configureViewEvents
	view when: TRMouseClick do: [ :evt | | anim |
			anim := RTNopAnimation new
				waitFor: 0.1 after: [
					closingSubmenuFlag ifTrue: [  
						parentMenus ifNotEmpty: [parentMenus first hideAll].
						view signalUpdate.
						]
					].
					view addAnimation: anim.
				 view signalUpdate].
	view when: TRMouseEnter do: [ :evt | closingSubmenuFlag := true].

	view when: TRMouseLeave do: [ :evt | closingSubmenuFlag := false].