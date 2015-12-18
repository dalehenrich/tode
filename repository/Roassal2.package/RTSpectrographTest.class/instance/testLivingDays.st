method timestamp
testLivingDays

	self assert: self class oldestMethod selector equals: #setUp.
	self assert: (self class hasAnyMethodProducedAfterDay: self class oldestMethod livingInDays).
	self deny: (self class hasAnyMethodProducedAfterDay: self class oldestMethod livingInDays - 1).
	self assert: (self class gotMethodOnDay: 0).
	