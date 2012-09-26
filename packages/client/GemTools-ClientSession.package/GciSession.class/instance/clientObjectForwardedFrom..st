Client Forwarders
clientObjectForwardedFrom: anOopType

	^self clientForwarderCache at: anOopType ifAbsent: [ ^nil ]