as yet unclassified
gsReferencesTo: objectArray into: referencePathsForOop inMemory: inMemory max: maxPaths
  | result limitArray |
  inMemory
    ifTrue: [ 
      objectArray
        do: [ :obj | 
          | refs |
          refs := obj findReferencesInMemory.
          referencePathsForOop at: obj put: refs ].
      ^ self ].
  System commit.
  limitArray := SystemRepository buildLimitSetForRefPathScan.
  objectArray do: [ :each | limitArray remove: each ifAbsent: [  ] ].
  result := SystemRepository
    findAllReferencePathsToObjects: objectArray
    limitObjArray: limitArray
    printToLog: false
    maxPaths: maxPaths.
  result
    do: [ :ar | 
      (ar at: 2)
        ifTrue: [ referencePathsForOop at: (ar at: 1) put: (ar at: 3) ] ]