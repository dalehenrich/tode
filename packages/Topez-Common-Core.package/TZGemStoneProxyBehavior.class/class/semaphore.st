as yet unclassified
semaphore
  GciSemaphore ifNil: [ GciSemaphore := Semaphore forMutualExclusion ].
  ^ GciSemaphore