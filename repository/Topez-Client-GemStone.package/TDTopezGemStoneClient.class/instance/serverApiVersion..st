as yet unclassified
serverApiVersion: aServerApiVersion
	serverApiVersion := aServerApiVersion.
	self clientApiVersion >= serverApiVersion
		ifTrue: [ self effectiveApiVersion: serverApiVersion ]
		ifFalse: [ self effectiveApiVersion: self clientApiVersion ]