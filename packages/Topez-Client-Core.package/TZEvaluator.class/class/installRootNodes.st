command definition
installRootNodes
    rootNode := nil.
    (self rootNode childNamed: 'home' addIfAbsent: true) childNamed: 'tmp' addIfAbsent: true