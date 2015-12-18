UI
setButtons
	| menuBuilder |
	menuBuilder := RTMenuBuilder new view: view.
	
	menuBuilder menu: 'previous' background: (Color lightBlue alpha: 0.4) callback: [ self previousFrame ].
	menuBuilder menu: 'next' background: (Color lightBlue alpha: 0.4) callback: [ self nextFrame ].

	menuBuilder menu: 'x-axis' submenu: '0' background: (Color red alpha: 0.4) callback: [ self x: 0. self renderCurrentFrame ].
	menuBuilder menu: 'y-axis' submenu: '0' background: (Color red alpha: 0.4) callback: [ self y: 0. self renderCurrentFrame ].	
	columns withIndexDo: [ :columnName :index | 
		menuBuilder 
			menu: 'x-axis' 
			submenu: columnName
			background: (Color red alpha: 0.4)
			callback: [ self x: [ :row | row at: (index + 1) ]. self setScale. self renderCurrentFrame ].
		menuBuilder 
			menu: 'y-axis' 
			submenu: columnName
			background: (Color red alpha: 0.4)
			callback: [ self y: [ :row | row at: (index + 1) ]. self setScale. self renderCurrentFrame ].
	].

