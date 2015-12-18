menu
setDefaultMenu
	"Simply add some useful menu"
	| b |
	b := RTMenuBuilder new view: self.
	b menu: 'Zoom' submenu: '+' background: (Color yellow alpha: 0.5) callback: [ RTZoomInMove on: self ].
	b menu: 'Zoom' submenu: '-' background: (Color yellow alpha: 0.5) callback: [ RTZoomOutMove on: self ].
	b menu: 'Export' submenu: 'HTML' background: (Color blue alpha:0.5) callback: [ RTHTML5Exporter export: self ].
	
	(Smalltalk allClasses anySatisfy: [ :c | c name == #RTPDFExporter ])
		ifTrue: [ b menu: 'Export' submenu: 'PDF' background: (Color blue alpha: 0.5) callback: [ (Smalltalk at: #RTPDFExporter) exportView: self ]. ].
	b render