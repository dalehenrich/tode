tests
testRendering

	| view el |
	view := RTView new.
	el := RTBox element.
	view add: el.
	
	self assert: el trachelShape notNil.
	self assert: el trachelShape class == TRBoxShape