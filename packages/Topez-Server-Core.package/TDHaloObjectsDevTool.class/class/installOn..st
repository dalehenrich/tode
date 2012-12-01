as yet unclassified
installOn: aTDTopezServer
    aTDTopezServer
        installChildrenAt: '/home';
        removeChildrenAt: '/home' select: [ :child | child name beginsWith: '.' ];
        installChildrenAt: self commandPath.
    super installOn: aTDTopezServer