accessing
accumulateBlocks
  "do not persist accumulateBlocks ... preserve isolation from instances that cannot be persisted: socket, semaphore, processScheduler, etc."

  accumulateBlocks ifNil: [ accumulateBlocks := TransientValue value: IdentitySet new ].
  ^ accumulateBlocks value