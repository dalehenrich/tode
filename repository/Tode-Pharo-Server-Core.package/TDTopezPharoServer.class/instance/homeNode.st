accessing
homeNode
	"do not persist homeNode ... preserve isolation from instances that cannot be persisted: socket, semaphore, processScheduler, etc."

	homeNode ifNil: [ homeNode := self lookup: '/home' ].
	^ homeNode