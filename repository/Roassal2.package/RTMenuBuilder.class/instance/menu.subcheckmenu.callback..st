public
menu: aTitle subcheckmenu: menuname callback: callback
	| checkmenu |
	checkmenu := nil.
	checkmenu := self
		 menu: aTitle
		 submenu: menuname
		 callback: [ 
			checkmenu selected: checkmenu selected not.
			callback value: checkmenu].
	checkmenu after: [ :menu | 
		menu text: checkmenu label.
		self signalUpdate].
	^ checkmenu.