as yet unclassified
installOn: aTDTopezServer
  aTDTopezServer installChildrenAt: self commandPath.
  self installHalosOn: aTDTopezServer.
  super installOn: aTDTopezServer