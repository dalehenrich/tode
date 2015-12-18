hook
doCenter: aGraph 

 	| midWidest step |
	midWidest := aGraph nodes 
		inject: 0
		into: [ :m :el | m max: (el bounds width )].
	midWidest := midWidest / 2.
	aGraph nodes do: [ :node | 
		step := (midWidest - (node bounds width /2)) asInteger @ 0.
		node bounds origin: (node bounds origin + step).
		node bounds corner: (node bounds corner + step).
	] 
