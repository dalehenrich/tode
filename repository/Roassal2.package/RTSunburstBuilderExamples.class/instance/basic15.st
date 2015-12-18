examples
basic15
	"
	self new basic15
	"
	| b|
	b := RTSunburstBuilder new.
	b strategy: RTSunburstExtentStrategy new.
	b shape color: [ :e | Color random ].
	b explore: 1 using: [ :n | n< 4 ifTrue: [ Array with: n + 1 with: n + 2 ] ifFalse: [ #( ) ] ].
	b strategy hasCenter: false.
	b radialSpacing: 0.
	b view @ RTDraggableView.
	b build.
	^ b view