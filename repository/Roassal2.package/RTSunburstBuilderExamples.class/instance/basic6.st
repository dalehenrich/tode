examples
basic6
	"
	self new basic6
	"	
	| b |
	b := RTSunburstBuilder new.
	b strategy radialSpacing:5.
	b shape current 
				colorElement: [ :el | el model subclasses notEmpty ifTrue: [ Color orange ] ifFalse: [ Color red ] ].

	b explore: Object using: #subclasses.
	b view @ RTDraggableView.
	b build.
	^ b view