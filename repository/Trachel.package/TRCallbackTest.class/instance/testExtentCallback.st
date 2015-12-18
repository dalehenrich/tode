tests
testExtentCallback
	| callback v s newExtent |
	callback := TRExtentCallback 
						block: [ :shape :ratio | 
									v := shape. s := ratio ].
	circle1 addCallback: callback.

	self assert: circle1 extent equals: rectangle1 extent.
	newExtent := 5 @ 5.
	circle1 extent: newExtent.
	self assert: v == circle1.
	self assert: v extent equals: newExtent.
	self assert: s equals: newExtent / rectangle1 extent.
