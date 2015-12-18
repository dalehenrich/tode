utility
make: label highlightableIfNecessaryBy: element
	"Do nothing if there is no need to"
	highlightable ifFalse: [ ^ self ].
	
	label color: lowColor.
	element when: TRMouseEnter do: [ :evt | label color: color. label pushFront. evt signalUpdate ].
	element when: TRMouseLeave do: [ :evt | label color: lowColor. evt signalUpdate ].