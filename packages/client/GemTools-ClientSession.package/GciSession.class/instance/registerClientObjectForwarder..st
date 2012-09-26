Client Forwarders
registerClientObjectForwarder: aClientObject

	| oopType |
	oopType := self executeString: 'ClientForwarder new'.
	self clientForwarderCache at: oopType put: aClientObject.
	^oopType