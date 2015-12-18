public
menu: aTitle subcheckmenu: menuname background: color callback: callback
	| checkmenu |
	checkmenu := nil.
	checkmenu := self
		 menu: aTitle
		 submenu: menuname
		 background: color
		 callback: [ 
			checkmenu selected: checkmenu selected not.
			callback value: checkmenu].
	checkmenu after: [ :menu | 
		menu text: checkmenu label.
		self signalUpdate].
	^ checkmenu.