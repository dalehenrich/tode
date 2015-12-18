public
menu: aTitle subcheckmenus: menus background: color
	"format for menus
	{'Title'->[:m | do something ]}"
	^ menus collect: [ :m |
		self menu: aTitle subcheckmenu: m key background: color callback: m value.
		 ].