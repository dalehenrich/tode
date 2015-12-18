tests
testBasicWithExtention
	| v s e |
	v := RTView new.
	s := RTExtensibleLabel new.
	e := s elementOn: 'Hello World'.
	e extent: 50 @ 50.
	v add: e.