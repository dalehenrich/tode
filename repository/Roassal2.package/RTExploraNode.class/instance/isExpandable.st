testing
isExpandable
	^ (self expansion reject: [ :elem | | test |
			test := (parentNode = nil) ifTrue: [nil] ifFalse: [parentNode element model].
			elem = test ]) isNotEmpty