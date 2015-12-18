sources
exampleRTObjectSubclasses

	| b c1 c2 |
	b := RTSunburstBuilder new.
	b strategy: RTSunburstExtentStrategy new.
	c1 := Color r: 0/255.0 g: 100/255.0 b: 0/255.0.
	c2 := Color r: 73/255.0 g: 121/255.0 b: 107/255.0.
	b shape colorElement: [ :el | el model subclasses notEmpty ifTrue: [ c2 ] ifFalse: [ c1 ] ].

	b explore: RTObject using: #subclasses.
	b view @ RTDraggableView.
	b build.
	^ b view