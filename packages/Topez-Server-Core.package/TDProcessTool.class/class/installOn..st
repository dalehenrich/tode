as yet unclassified
installOn: aTDTopezServer
  aTDTopezServer installChildrenAt: self commandPath.
  self
    installHalosOn: aTDTopezServer;
    installExampleOn: aTDTopezServer;
    yourself.
  super installOn: aTDTopezServer