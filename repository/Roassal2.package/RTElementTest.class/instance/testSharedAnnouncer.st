events
testSharedAnnouncer

	| e v a |
	e := RTBox element.
	self assert: e announcer ~~ e trachelShape announcer.
	a := e announcer.
	
	v := RTView new.
	v add: e.
	self assert: e announcer == e trachelShape announcer.
	self assert: a == e trachelShape announcer