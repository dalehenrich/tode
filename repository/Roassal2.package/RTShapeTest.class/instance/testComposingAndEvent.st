composing
testComposingAndEvent
	| s1 s2 e v t |
	s1 := RTLabel new.
	s2 := RTBox new.
	e := RTElement on: 'hello'.
	e + s1 + s2.
	t := false.
	e when: TRMouseClick do: [ :evt | t := true  ].
	v := RTView new.
	v add: e.
	
	self deny: t.
	e announce: TRMouseClick.
	self assert: t