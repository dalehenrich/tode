as yet unclassified
installOn: aTDTopezServer
  aTDTopezServer installChildrenAt: self commandPath.
  self installExampleOn: aTDTopezServer.
  super installOn: aTDTopezServer