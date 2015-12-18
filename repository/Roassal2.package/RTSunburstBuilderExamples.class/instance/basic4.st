examples
basic4
	"
	self new basic4
	"	
	| b |
	b := RTSunburstBuilder new.
	b shape colorElement: [ :el | el model subclasses notEmpty ifTrue: [ Color orange ] ifFalse: [ Color red ] ].

	b explore: RTObject using: #subclasses.
	b view @ RTDraggableView.
	b build.
	^ b view