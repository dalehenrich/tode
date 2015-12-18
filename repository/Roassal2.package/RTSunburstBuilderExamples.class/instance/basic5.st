examples
basic5
	"
	self new basic5
	"	
	| b |
	b := RTSunburstBuilder new.
	b strategy radialSpacing:10.
	b shape current 
				colorElement: [ :el | el model subclasses notEmpty ifTrue: [ Color orange ] ifFalse: [ Color red ] ].

	b explore: RTObject using: #subclasses.
	b view @ RTDraggableView.
	b build.
	^ b view