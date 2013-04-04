as yet unclassified
installOn: aTDTopezServer
  aTDTopezServer
    ensureChildrenExistIn: '/mc';
    ensureChildrenExistIn: self commandPath.
  self installHalosOn: aTDTopezServer.
  super installOn: aTDTopezServer