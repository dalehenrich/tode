as yet unclassified
installOn: aTDTopezServer
    (aTDTopezServer installChildrenAt: '/home')
        readMe: self homeReadMe;
        yourself.
    super installOn: aTDTopezServer.
    self installExampleOn: aTDTopezServer