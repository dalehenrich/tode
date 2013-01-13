as yet unclassified
installOn: aTDTopezServer
  aTDTopezServer installChildrenAt: self commandPath.
  self installExampleOn: aTDTopezServer.
  super installOn: aTDTopezServer.
  TDTopezServer registerBuilderClass: TDTestResultNodeBuilder for: TestResult aspect: #'edit'