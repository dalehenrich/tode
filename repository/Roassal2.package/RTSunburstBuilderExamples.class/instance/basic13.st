examples
basic13
	"
	self new basic13
	"	
	| b |
	b := RTSunburstBuilder new.
	b strategy: RTSunburstExtentStrategy new.
	b radialSpacing: 1.
	
	b interactions add: RTSBFadeInteraction new.
	b shape current 
				color: [ :m | m children notEmpty ifTrue: [ Color orange ] ifFalse: [ Color red ] ].
 	b weight: [ :m | m tally ].
	b explore: (MessageTally new
     spyEvery: 1
     on: [ Object browse];
     yourself) using: #children.
	b view @ RTDraggableView.
	b open.
	b view canvas focusOnCenterScaled.