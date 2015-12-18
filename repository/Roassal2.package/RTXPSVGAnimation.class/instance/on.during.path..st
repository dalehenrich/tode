as yet unclassified
on: elements during: seconds path: aBlock
	
	| time |
	element := (elements isKindOf: RTGroup)
		ifTrue: [ elements] 
		ifFalse: [ RTGroup new add: elements ].
	curves0 := element collect: [ :e | e trachelShape curves ].
	curves1 := element collect: [ :e | e trachelShape path:( aBlock rtValue: e); curves.].
	time := curves0 size = curves1 size ifTrue: [ 0 max: seconds ] ifFalse: [ 0 ].
	animatedValue := VIAnimatedValue new
		evaluator: [ :t | t ];
		timer: (VITimer new cycleLength: time);
		yourself.
		