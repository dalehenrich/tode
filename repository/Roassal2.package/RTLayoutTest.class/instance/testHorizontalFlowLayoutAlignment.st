as yet unclassified
testHorizontalFlowLayoutAlignment
	| l |
	l := RTHorizontalFlowLayout new.
	self assert: l isAlignTop.
	self deny: l isAlignBottom.
	
	l alignBottom.
	self deny: l isAlignTop.
	self assert: l isAlignBottom.