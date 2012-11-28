accessing
rootNode
    rootNode ifNil: [ rootNode := TDDirectoryNode new ].
    ^ rootNode