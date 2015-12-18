tests
testHookIntervals
	| text words intervals arr |
	words := OrderedCollection new.
	intervals := OrderedCollection new.
	text := 'my whole text', String cr, 'a b c'.
	builder wordHook: [ :anElement :anInterval | 
		words add: anElement model.
		intervals add: anInterval. ].
	builder addText: text.
	arr := OrderedCollection new.
	arr add: 'my'; add: ' '; add: 'whole'; add: ' '; add: 'text'; add: 'a'; add: ' '; add: 'b'; add: ' '; add: 'c'.
	self assert: words asArray equals: arr asArray.
	arr := OrderedCollection new.
	arr add: (1 to: 2); add: (3 to: 3); add: (4 to: 8); add: (9 to: 9); add: (10 to: 13) ; add: (15 to: 15); add: (16 to: 16); add: (17 to: 17); 
		add: (18 to: 18); add: (19 to: 19).
	self 
		assert: intervals asArray 
		equals: arr asArray
					