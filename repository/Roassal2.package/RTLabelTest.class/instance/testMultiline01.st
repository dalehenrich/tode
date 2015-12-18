test multilines
testMultiline01

	| v lbl |
	v := RTView new.
	lbl := RTLabel elementOn: 'Hello', String cr, 'World'.
	v add: lbl.
	
	lbl trachelShape setAsFixed.
	self assert: lbl trachelShape class == TRCompositeShape