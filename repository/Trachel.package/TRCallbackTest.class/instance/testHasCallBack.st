tests
testHasCallBack

	self deny: TREllipseShape new hasCallback.
	self assert: (TREllipseShape new addCallback: TRTranslationCallback new) hasCallback