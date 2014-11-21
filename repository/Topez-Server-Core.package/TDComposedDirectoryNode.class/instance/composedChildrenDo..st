as yet unclassified
composedChildrenDo: aBlock
  ^ self contents
    composedChildrenDo: [ :composedNode :child | aBlock value: composedNode value: child ]