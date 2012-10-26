command definition
installRootNodes
    self rootNode
        childNamed: 'scripts' addIfAbsent: true;
        childNamed: 'home' addIfAbsent: true;
        yourself