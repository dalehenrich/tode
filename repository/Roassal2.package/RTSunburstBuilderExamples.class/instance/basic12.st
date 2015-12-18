examples
basic12
	"
	self new basic12
	"	
	| b |
	b := RTSunburstBuilder new.
	b radialSpacing: 5.
	
	b interactions add: RTSBFadeInteraction new.
	b shape current 
				color: [ :m | m children notEmpty ifTrue: [ Color orange ] ifFalse: [ Color red ] ].
 	b weight: [ :m | m tally ].
	b explore: (MessageTally new
     spyEvery: 1
     on: [ Object browse ];
     yourself) using: #children.
	b view @ RTDraggableView.
	b open.
	b view canvas focusOnCenterScaled.