as yet unclassified
installOn: aTDTopezServer
    | optionsNode |
    (aTDTopezServer installChildrenAt: '/home')
        readMe: self homeReadMe;
        yourself.
    super installOn: aTDTopezServer.
    self
        installExampleOn: aTDTopezServer;
        installOptionsOn: aTDTopezServer