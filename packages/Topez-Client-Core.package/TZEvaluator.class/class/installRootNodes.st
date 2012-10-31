command definition
installRootNodes
    | topezNode scriptNode |
    rootNode := nil.
    self rootNode childNamed: 'home' addIfAbsent: true.
    topezNode := self rootNode childNamed: 'topez' addIfAbsent: true.
    scriptNode := topezNode childNamed: 'scripts' addIfAbsent: true