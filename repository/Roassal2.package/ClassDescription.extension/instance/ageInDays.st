*roassal2
ageInDays
	"Return the number of days the class exists"
	self numberOfMethods isZero ifTrue: [ ^ 0 ].
	^ (DateAndTime now - self oldestMethod date) asDays