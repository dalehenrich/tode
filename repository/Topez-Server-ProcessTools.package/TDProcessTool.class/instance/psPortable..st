as yet unclassified
psPortable: aGsProcess
  GsProcess _current == aGsProcess
    ifTrue: [ 
      | sem |
      sem := Semaphore new.
      [ 
      aGsProcess convertToPortableStack.
      sem signal.
      Processor yield ]
        fork.
      sem wait ]
    ifFalse: [ aGsProcess convertToPortableStack ].
  ^ aGsProcess