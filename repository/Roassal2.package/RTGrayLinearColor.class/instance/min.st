accessing
min
	min = -1 ifTrue: [ 
		min := scope inject: 1000000 into: [ :s :e | s min: (command rtValue: e) ] ].

	^ min