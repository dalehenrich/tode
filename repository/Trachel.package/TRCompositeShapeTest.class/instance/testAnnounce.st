tests
testAnnounce
	| t |
	t := 0.
	box1 when: TREvent do: [ :evt | t := t + 1 ].
	box2 when: TREvent do: [ :evt | t := t + 10 ].
	self assert: t equals: 0.
	multiShape announce: TREvent.
	self assert: t equals: 11.

"	emptyShape := TRMultiCompositeShape new.
	multiShape := TRMultiCompositeShape new.
	box1 := TRBoxShape new size: 20. 
	box2 := TRBoxShape new size: 30.
	multiShape addShape: box1; addShape: box2.
	canvas := TRCanvas new."