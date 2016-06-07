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
  self commitTransaction.
  limitArray := SystemRepository buildLimitSetForRefPathScan.
  objectArray do: [ :each | limitArray remove: each ifAbsent: [  ] ].
  (SystemRepository
    respondsTo:
      #'findAllReferencePathsToObjects:limitObjArray:printToLog:maxPaths:')
    ifTrue: [ 
      result := SystemRepository
        perform:
          #'findAllReferencePathsToObjects:limitObjArray:printToLog:maxPaths:'
        withArguments:
          {objectArray.
          limitArray.
          false.
          maxPaths}.
      result
        do: [ :ar | 
          (ar at: 2)
            ifTrue: [ referencePathsForOop at: (ar at: 1) put: (ar at: 3) ] ] ]
    ifFalse: [ 
      result := SystemRepository
        perform:
          #'findReferencePathToObjs:limitObjArray:findAllRefs:printToLog:'
        withArguments:
          {objectArray.
          limitArray.
          true.
          false}.
      result
        do: [ :ar | 
          (ar at: 2)
            ifTrue: [ referencePathsForOop at: (ar at: 1) put: (ar copyFrom: 3 to: ar size) ] ] ]