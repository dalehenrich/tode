tests
testGsReclaimAll
	(System gemEnvironmentVariable: 'GS_TRAVIS')
		ifTrue: [ 
			"skip running this test on travis ... fails too often"
			^ self ].
	self
		evaluateCommandString: 'gs --help reclaimAll';
		evaluateCommandString: 'gs reclaimAll';
		yourself