tests
testGivenCommandAndCollectionDefault
	|n elements defaultPalette|
	n := RTBucketColor numberOfColors: 5 command: #yourself scope: (1 to: 5).
	defaultPalette := n defaultPalette.
	elements := (RTBox new size: 20; color: n) elementsOn: (1 to: 5).
	"view := RTView new.
	view addAll: elements.
	RTHorizontalLineLayout on: view elements.
	view open."
	(elements collect: #color) with: defaultPalette do: [ :elementColor :realColor |
		self assert: elementColor equals: realColor.
		 ]
	
	