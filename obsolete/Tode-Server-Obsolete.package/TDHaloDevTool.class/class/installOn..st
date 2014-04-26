as yet unclassified
installOn: aTDTopezServer
  aTDTopezServer ensureChildrenExistIn: self commandPath.
  self installHalosOn: aTDTopezServer.
  super installOn: aTDTopezServer