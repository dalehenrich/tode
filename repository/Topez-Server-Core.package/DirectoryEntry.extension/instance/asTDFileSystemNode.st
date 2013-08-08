*topez-server-core
asTDFileSystemNode
  | nodeClass |
  nodeClass := self isDirectory
    ifTrue: [ TDFileSystemDirectoryNode ]
    ifFalse: [ TDFileSystemLeafNode ].
  ^ nodeClass directoryEntry: self