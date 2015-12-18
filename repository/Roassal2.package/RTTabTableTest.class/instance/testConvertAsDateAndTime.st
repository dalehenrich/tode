tests
testConvertAsDateAndTime

	tab input: self dateTimeStringExample usingDelimiter: $,.
	tab convertColumnAsDateAndTime: 3.
	tab convertColumnAsDateAndTime: 4.
	self assert: tab values size equals: 3.
	
	self assert: tab values first third year equals: 2014.
	self assert: tab values last third year equals: 2008.
	self assert: tab values last fourth year equals: 2009.
	self assert: tab values last fourth month equals: 1.