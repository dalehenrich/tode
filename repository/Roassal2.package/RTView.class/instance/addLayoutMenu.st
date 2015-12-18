menu
addLayoutMenu
	"Simply add some useful menu"
	| b translator |
	translator := RTSmoothLayoutTranslator new.
	b := RTMenuBuilder new view: self.
	b menu: 'Layout' submenu: 'grid' background: Color yellow callback: [ RTGridLayout new translator: translator; on: self elements. self canvas signalUpdate ].
	b menu: 'Layout' submenu: 'hori' background: Color yellow callback: [ RTHorizontalLineLayout new translator: translator; on: self elements. self canvas signalUpdate ].
	b menu: 'Layout' submenu: 'tree' background: Color yellow callback: [ RTTreeLayout new translator: translator; on: self elements edges: self edges. self canvas signalUpdate ].
	b menu: 'Layout' submenu: 'treeH' background: Color yellow callback: [ RTHorizontalTreeLayout new translator: translator; on: self elements edges: self edges. self canvas signalUpdate ].
	b menu: 'Layout' submenu: 'cluster' background: Color yellow callback: [ RTClusterLayout new translator: translator; on: self elements edges: self edges. self canvas signalUpdate ].
	b menu: 'Layout' submenu: 'circle' background: Color yellow callback: [ RTCircleLayout new translator: translator; on: self elements edges: self edges. self canvas signalUpdate ].
	b menu: 'Layout' submenu: 'radial' background: Color yellow callback: [ RTRadialTreeLayout new translator: translator; on: self elements edges: self edges. self canvas signalUpdate ].
	b menu: 'Layout' submenu: 'sugi' background: Color yellow callback: [ RTSugiyamaLayout new translator: translator; on: self elements edges: self edges. self canvas signalUpdate ].
	b build