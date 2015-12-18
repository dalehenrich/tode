accessing
max
	max = -1 ifTrue: [ 
		max := scope inject: -1000000 into: [ :s :e | s max: (command rtValue: e) ] ].

	^ max