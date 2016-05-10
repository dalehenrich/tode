querying
childrenDo: aBlock
  (self nodeIfNotPresnt: [ ^ self ])
    childrenDo: [ :childNode | 
      (self selectBlock value: childNode)
        ifTrue: [ aBlock value: childNode ] ]