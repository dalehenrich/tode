Client Forwarders
registerClientObjectForwarderFor: aClientObject asDependentFor: anOopType

	| oopType |
	oopType := self jadeServer registerClientObjectForwarderDependentFor: anOopType.
	oopType == nil
		ifTrue: [| clientForwarderOop |
			clientForwarderOop := self registerClientObjectForwarder: aClientObject.
			self receiver: anOopType perform: 'addDependent:' with: clientForwarderOop.
			^self ].
	"Transcript cr; show: 'registerForFinalization: ', oopType asInteger printString."
	aClientObject toFinalizeSend: #finalizeForwarder: to: self with: oopType.
	oopType toFinalizeSend: #finalizeForSession: to: anOopType with: self.
	self clientForwarderCache at: oopType put: aClientObject.
	
	