as yet unclassified
childrenDo: aBlock
  self basicContents
    childrenDo: [ :child | 
      child parent: self.
      aBlock value: child ]