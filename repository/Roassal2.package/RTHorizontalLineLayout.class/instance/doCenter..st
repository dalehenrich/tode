hook
doCenter: elements 

 	| midTallest step |
	midTallest := 0.
	midTallest := elements nodes 
		inject: 0
		into: [ :m :el | m max: (el bounds height )].
	midTallest := midTallest / 2.
	elements nodes do: [ :node | 
		step := 0 @ (midTallest - (node bounds height / 2)) asInteger.
		node bounds origin: (node bounds origin + step).
		node bounds corner: (node bounds corner + step).
	] 
