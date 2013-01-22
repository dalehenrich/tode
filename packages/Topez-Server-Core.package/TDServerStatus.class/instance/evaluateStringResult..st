as yet unclassified
evaluateStringResult: anObject
  "do not persist evaluateStringResult ... not so much a concurrency issue, but sometimes the result of an evaluation will hold onto instances that cannot be persisted: socket, semaphore, processScheduler, etc."

  evaluateStringResult ifNil: [ evaluateStringResult := TransientValue new ].
  evaluateStringResult value: anObject