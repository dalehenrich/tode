accessing
copyDirectoryNode: aDirectoryNode as: newName
  (self name endsWith: self stonFileExtension)
    ifTrue: [ 
      [ self asTDLeafNode copyDirectoryNode: aDirectoryNode as: newName ]
        on: STONReaderError
        do: [ :ex | super copyDirectoryNode: aDirectoryNode as: newName ] ]
    ifFalse: [ super copyDirectoryNode: aDirectoryNode as: newName ]