examples
example1
	
	|n elements view |
	n := RTBucketColor numberOfColors: 5 scope: (1 to: 35).
	elements := (RTBox new size: 20; color: n) elementsOn: (1 to: 30).
	view := RTView new.
	view addAll: elements.
	RTGridLayout on: view elements.
	view open.
