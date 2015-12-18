*roassal2
livingInDays
	self numberOfMethods isZero ifTrue: [ ^ 0 ].
	^ (DateAndTime now - self oldestMethod date) asDays