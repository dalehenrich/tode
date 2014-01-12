as yet unclassified
performSendNoForwarder: noForwarderBlock
	| forwarder clientForwarderOop selector args messageArgs |
	args := self tag args.
	clientForwarderOop := session asOopType: (args at: 1).
	forwarder := session clientObjectForwardedFrom: clientForwarderOop.
	forwarder == nil
		ifTrue: [ ^ noForwarderBlock value ].
	selector := args at: 3.
	messageArgs := args at: 4.
	^ forwarder performFromServer: selector with: messageArgs using: session