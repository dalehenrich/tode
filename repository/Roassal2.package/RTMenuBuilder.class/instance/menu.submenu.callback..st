public
menu: aTitle submenu: aSubMenuName callback: callback
	| parentMenu menuItem |
	
	parentMenu := (self parentMenus) detect: [ :m | m label text = aTitle] ifFound: [:m | m label] ifNone: [parentMenu := self createParentMenu: aTitle].
	
	menuItem := RTMenuItem new name: aSubMenuName; callback: callback.
	parentMenu element add: menuItem.
	^ menuItem.