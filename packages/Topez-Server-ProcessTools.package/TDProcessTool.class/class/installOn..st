as yet unclassified
installOn: aTDTopezServer
  aTDTopezServer ensureChildrenExistIn: self commandPath.
  self
    installHalosOn: aTDTopezServer;
    installExampleOn: aTDTopezServer;
    yourself.
  super installOn: aTDTopezServer