running
removeTestRootNode
  | dir |
  dir := ServerFileDirectory on: self fileSystemRootPath.
  dir exists
    ifTrue: [ dir recursiveDelete ].
  (self topez rootNode lookup: self rootNodePath with: self topez ifAbsent: [  ])
    ifNotNil: [ :tmpNode | tmpNode rm ]