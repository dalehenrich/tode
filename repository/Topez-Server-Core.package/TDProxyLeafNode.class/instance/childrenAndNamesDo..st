as yet unclassified
childrenAndNamesDo: aBlock
  self basicContents
    childrenAndNamesDo: [ :child :name | 
      child parent: self.
      aBlock value: child value: name ]