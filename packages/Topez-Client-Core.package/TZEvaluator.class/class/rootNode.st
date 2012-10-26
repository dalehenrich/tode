accessing
rootNode
    rootNode ifNil: [ rootNode := TZNode new ].
    ^ rootNode