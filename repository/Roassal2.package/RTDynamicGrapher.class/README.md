Version of Grapher that allow for dynamic data points addition. 

Here is a small example:

-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
	| b |
	b := RTDynamicGrapher new.
	b maxX: 100.
	b maxY: 100.

	b x: #x; y: #y.
	 
	b shape circle color: (Color red alpha: 0.3).
	b view addMenu: '+ 10' callback: [ 
			b addAll: ((1 to: 10) collect: [ :i | (100 atRandom @ 100 atRandom) ]) ].
	b open
-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=