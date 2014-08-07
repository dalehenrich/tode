parse
parseSelectBlock
	self enterBlock.
	currentTokenFirst == $:
		ifTrue: [ self parseBlockArguments ].
	self parseStatementList.
	self failUnless: currentTokenFirst == $}.
	self scanPast: #rightBrace level: bracketDepth.
	self leaveBlock