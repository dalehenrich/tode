accessing
netLDIOrNetLDIPort
	^ self netLDIPort isEmpty
		ifTrue: [ self netLDI ]
		ifFalse: [ self netLDIPort ]