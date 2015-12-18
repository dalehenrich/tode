public
menu: aTitle submenus: menus background: aColor
	^ menus collect: [ :m | 
		self menu: aTitle submenu: m key background: aColor callback: m value].