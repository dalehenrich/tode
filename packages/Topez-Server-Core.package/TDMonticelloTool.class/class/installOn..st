as yet unclassified
installOn: aTDTopezServer
  aTDTopezServer
    installChildrenAt: '/mc';
    installChildrenAt: self commandPath.
  self installHalosOn: aTDTopezServer.
  super installOn: aTDTopezServer