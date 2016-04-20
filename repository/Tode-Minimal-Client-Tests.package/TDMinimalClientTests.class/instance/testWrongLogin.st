tests
testWrongLogin
	| wrongSessionDesc |
	self client logout.
	wrongSessionDesc := self sessionDescription.
	wrongSessionDesc password: 'wrongPassword'.
	self
		executeShould: [ (TDMinimalClient loginWith: wrongSessionDesc)
				debugMode: self debugMode;
				yourself ]
		inScopeOf: Error
		withDescriptionContaining: 'the userId/password combination is invalid or expired'