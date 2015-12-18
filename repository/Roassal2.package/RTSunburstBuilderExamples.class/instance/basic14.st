examples
basic14
	"
	self new basic14
	"
	| b|
	b := RTSunburstBuilder new.
	b strategy: RTSunburstExtentStrategy new.
	b shape color: [ :e | Color random ].
	b explore: 1 using: [ :n | n< 4 ifTrue: [ Array with: n + 1 with: n + 2 ] ifFalse: [ #( ) ] ].
	b view @ RTDraggableView.
	b build.
	^ b view