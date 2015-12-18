attributes
testAttributes
	| el |
	el := RTElement new.
	self deny: el hasAttributes.
	el attributes at: #oldColor put: Color black.
	self assert: el hasAttributes.