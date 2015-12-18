callbacks
testCallbackRemove
	| t callback |
	t := 0.
	callback := TRRemoveCallback new block: [ :shape | t := t + 1 ].
	multiShape addCallback: callback.
	self assert: t equals: 0.

	multiShape remove.
	self assert: t equals: 0.

	canvas addShape: multiShape.
	multiShape remove.
	self assert: t equals: 1