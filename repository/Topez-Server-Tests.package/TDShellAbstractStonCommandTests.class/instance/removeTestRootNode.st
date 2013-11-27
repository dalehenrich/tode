private
removeTestRootNode
  (self topez rootNode lookup: self rootNodePath with: self topez ifAbsent: [  ])
    ifNotNil: [ :tmpNode | tmpNode rm ]