callbacks
testTranslateBy
	| callback t |
	callback := TRTranslationCallback new.
	t := 0.
	callback block: [ :o :step | t := t + 1 ].
	camera addCallback: callback.
	self assert: t equals: 0.
	
	camera translateBy: 5 @ 4.
	self assert: t equals: 1.

	camera translateBy: 5 @ 4.
	self assert: t equals: 2.
	
	camera translateTo: 15 @ 4.
	self assert: t equals: 3.
