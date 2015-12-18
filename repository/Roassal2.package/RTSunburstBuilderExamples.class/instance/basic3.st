examples
basic3
	"
	self new basic3
	"	
	| b |
	b := RTSunburstBuilder new.
	b shape current 
				colorElement: [ :el | Color grayScale256: ((el attributeAt: #depth ifAbsent: [ 0 ]) * 30) ].

	b explore: RTObject using: #subclasses.
	b view @ RTDraggableView.
	b build.
	^ b view