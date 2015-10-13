querying
childrenDo: aBlock
  self node
    childrenDo: [ :childNode | 
      (self selectBlock value: childNode)
        ifTrue: [ aBlock value: childNode ] ]