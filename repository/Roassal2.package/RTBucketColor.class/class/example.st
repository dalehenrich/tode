examples
example
	
	|n elements view|
	n := RTBucketColor numberOfColors: 5 command: #asInteger scope: ($a to: $z).
	n colorScheme: 'Blues'.
	elements := (RTBox new size: 20; color: n) elementsOn: ($a to: $z).
	view := RTView new.
	view addAll: elements.
	RTGridLayout on: view elements.
	view open.
