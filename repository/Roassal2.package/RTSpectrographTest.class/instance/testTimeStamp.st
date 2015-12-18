method timestamp
testTimeStamp

	| cm |
	cm := self class >> #foo.
	self assert: cm notNil.
	self assert: cm timeStamp equals:  'AlexandreBergel 5/11/2014 00:30'.
	self assert: cm date equals: (DateAndTime fromString: '5/11/2014 00:30').
	self assert: cm dateSinceEpoch equals: ((DateAndTime fromString: '5/11/2014 00:30') - DateAndTime dosEpoch)