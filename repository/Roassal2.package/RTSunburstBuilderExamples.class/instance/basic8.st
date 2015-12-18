examples
basic8
	"
	self new basic8
	"	
	| b |
	b := RTSunburstBuilder new.
	b radialSpacing: 15.
	b shape current 
				colorElement: [ :el | el model subclasses notEmpty ifTrue: [ Color orange ] ifFalse: [ Color red ] ].

	b explore: RTObject using: #subclasses.
	b view @ RTDraggableView.
	b build.
	^ b view