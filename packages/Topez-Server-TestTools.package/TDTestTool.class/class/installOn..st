as yet unclassified
installOn: aTDTopezServer
  "#browse #view #inspect ... #view is default"

  "`edit` ---> #browse [[editor only aspect]]
   `view` ---> #view
   `inspect` ---> #inspect"

  aTDTopezServer ensureChildrenExistIn: self commandPath.
  self installExampleOn: aTDTopezServer.
  super installOn: aTDTopezServer.
  TDTopezServer
    registerBuilderClass: TDTestResultNodeBuilder
    for: TestResult
    aspect: #'view'