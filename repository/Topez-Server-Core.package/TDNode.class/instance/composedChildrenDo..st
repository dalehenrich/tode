as yet unclassified
composedChildrenDo: aBlock
  ^ self childrenDo: [ :child | aBlock value: nil value: child ]