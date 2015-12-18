examples
basic7
	"
	self new basic7
	"	
	| b |
	b := RTSunburstBuilder new.
	b angularSpacing: 1.
	b radialSpacing: 3.
	b shape current 
				colorElement: [ :el | el model subclasses notEmpty ifTrue: [ Color orange ] ifFalse: [ Color red ] ].

	b explore: RTObject using: #subclasses.
	b view @ RTDraggableView.
	b build.
	^ b view