as yet unclassified
psPortable: aGsProcess
  GsProcess _current == aGsProcess
    ifTrue: [ 
      | sem forkedProcess |
      sem := Semaphore new.
      forkedProcess := [ 
      aGsProcess localStackDepth.
      aGsProcess convertToPortableStack.
      sem signal.
      Processor yield ]
        fork.
      sem wait ]
    ifFalse: [ aGsProcess convertToPortableStack ].
  ^ aGsProcess