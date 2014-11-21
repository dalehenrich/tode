directory compat
composedChildrenDo: aBlock
  ^ self node
    childrenDo: [ :childNode | aBlock value: self node value: childNode ]