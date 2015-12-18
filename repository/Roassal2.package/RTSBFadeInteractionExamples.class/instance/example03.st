examples
example03
	
	"
	self new example03
	"	
	| b |
	b := RTSunburstBuilder new.
	
	b radialSpacing: 5.
	b angularSpacing: 1.

	b shape current 
				color: [ :cls | cls subclasses notEmpty ifTrue: [ Color orange ] ifFalse: [ Color red ] ].
	Transcript open.	
	b interactions add: (RTSBFadeInteraction action: [:cls | Transcript show: cls name; cr.]).
	
	b explore: RTObject using: #subclasses.
	b view @ RTDraggableView.

	b open