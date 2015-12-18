public
menu: aTitle submenu: aSubMenuName background: aColor callback: callback
	| parentMenu menuItem |
	
	parentMenu := (self parentMenus) detect: [ :m | m label text = aTitle] ifFound: [:m | m label] ifNone: [parentMenu := self createParentMenu: aTitle background: aColor].
	
	menuItem := RTMenuItem new name: aSubMenuName; callback: callback; color: aColor.
	parentMenu element add: menuItem.
	^ menuItem.