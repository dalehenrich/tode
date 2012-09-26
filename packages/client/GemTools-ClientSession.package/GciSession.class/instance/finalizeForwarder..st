finalization
finalizeForwarder: anOopType

	"Transcript cr; show: 'finalizeForwarder: ', anOopType asInteger printString."
	self clientForwarderCache removeKey: anOopType ifAbsent: []