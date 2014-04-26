as yet unclassified
installOn: aTDTopezServer
  aTDTopezServer ensureChildrenExistIn: self commandPath.
  self
    installExampleOn: aTDTopezServer;
    yourself.
  super installOn: aTDTopezServer