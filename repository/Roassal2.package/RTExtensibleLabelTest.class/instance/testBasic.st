tests
testBasic
	| v s e |
	v := RTView new.
	s := RTExtensibleLabel new.
	e := s elementOn: 'Hello World'.
	v add: e.