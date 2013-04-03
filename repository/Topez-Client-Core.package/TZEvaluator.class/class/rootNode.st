accessing
rootNode
    rootNode ifNil: [ rootNode := TZDirectoryNode new ].
    ^ rootNode