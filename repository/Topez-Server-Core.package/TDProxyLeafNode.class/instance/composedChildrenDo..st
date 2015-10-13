as yet unclassified
composedChildrenDo: aBlock
  self basicContents
    composedChildrenDo: [ :composedParentNode :child | 
      child parent: self.
      aBlock value: composedParentNode value: child ]