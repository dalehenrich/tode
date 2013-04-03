accessing
netLDI

	netLDI == nil ifTrue: [ netLDI := self defaultNetLDI ].
	^netLDI