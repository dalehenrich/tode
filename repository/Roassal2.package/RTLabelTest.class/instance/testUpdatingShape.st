tests
testUpdatingShape
	| view el |
	view := RTView new.
	el := (RTLabel new text: 'Hello') element.
	view add: el.
	
	self assert: el trachelShape class == TRLabelShape.
	self assert: el trachelShape text = 'Hello'.
	
	el shape text: 'Change'; color: Color red. el update.
	self assert: el trachelShape class == TRLabelShape.
	self assert: el trachelShape text = 'Change'.