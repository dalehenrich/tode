tests
testTranslationCallback
	| callback v s  |
	callback := TRTranslationCallback 
						block: [ :shape :step | 
									v := shape. s := step ].
	circle1 addCallback: callback.

	self assert: circle1 position = rectangle1 center.
	circle1 translateTo: 20 @ 30.
	self assert: v == circle1.
	self assert: v center = (20 @ 30).
	self assert: s = ((20 @ 30) - rectangle1 center).

	v := nil.
	circle1 translateBy: 5 @ 3.
	self assert: v == circle1.
	self assert: v center = (25 @ 33).
	self assert: s = (5 @ 3).
	