as yet unclassified
mutex
    GciMutex ifNil: [ GciMutex := Mutex new ].
    ^ GciMutex