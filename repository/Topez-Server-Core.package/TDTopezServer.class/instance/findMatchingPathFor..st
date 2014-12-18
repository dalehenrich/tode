accessing
findMatchingPathFor: aPath
  ^ aPath isEmpty
    ifTrue: [ self currentNode findMatchingPathFor: '' with: self ]
    ifFalse: [ 
      (aPath beginsWith: './')
        ifTrue: [ 
          self currentNode
            findMatchingPathFor: (aPath copyFrom: 3 to: aPath size)
            with: self ]
        ifFalse: [ (self baseNodeFor: aPath) findMatchingPathFor: aPath with: self ] ]