visitor-double dispatching
acceptPluggableNode: aTDPluggableNode
  aTDPluggableNode
    childrenDo: [ :child | 
      child topez: self topez.
      self visitNode: child ]