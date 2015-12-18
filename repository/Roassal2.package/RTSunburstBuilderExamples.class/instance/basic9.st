examples
basic9
	"
	self new basic9
	"	
	| b |
	b := RTSunburstBuilder new.
	b radialSpacing: 0.
	b angularSpacing: 1.
	b strategy hasCenter: false.
	b shape current 
				color: [ :cls | cls subclasses notEmpty ifTrue: [ Color orange ] ifFalse: [ Color red ] ].
	
	b explore: RTObject using: #subclasses.
	b view @ RTDraggableView.
	b build.
	^ b view