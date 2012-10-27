command definition
installRootNodes
    rootNode := nil.
    self rootNode
        childNamed: 'home' addIfAbsent: true;
        yourself