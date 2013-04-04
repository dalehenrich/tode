accessing
homeNode
  "do not persist homeNode ... preserve isolation from instances that cannot be persisted: socket, semaphore, processScheduler, etc."

  homeNode ifNil: [ homeNode := TransientValue value: (self lookup: '/home') ].
  ^ homeNode value