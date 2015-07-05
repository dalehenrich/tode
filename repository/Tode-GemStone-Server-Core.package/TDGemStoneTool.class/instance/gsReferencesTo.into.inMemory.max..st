as yet unclassified
gsReferencesTo: objectArray into: referencePathsForOop inMemory: inMemory max: maxRefs
  objectArray
    do: [ :obj | 
      | refs |
      refs := inMemory
        ifTrue: [ obj findReferencesInMemory ]
        ifFalse: [ 
          obj isCommitted
            ifTrue: [ 
              System abort.
              SystemRepository
                findAllReferencePathsToObject: obj
                maxPaths: maxRefs ]
            ifFalse: [ 'Object is not persistent' ] ].
      referencePathsForOop at: obj put: refs ]