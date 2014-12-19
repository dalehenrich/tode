accessing
findMatchingPathFor: aPath
  ^ aPath isEmpty
    ifTrue: [ self currentNode findMatchingPathFor: '' with: self ]
    ifFalse: [ 
      (aPath beginsWith: '/')
        ifTrue: [ (self baseNodeFor: aPath) findMatchingPathFor: aPath with: self ]
        ifFalse: [ self currentNode findMatchingPathFor: aPath with: self ] ]