as yet unclassified
installOn: aTDTopezServer
  aTDTopezServer installChildrenAt: self commandPath.
  self
    installHalosOn: aTDTopezServer;
    installExampleOn: aTDTopezServer;
    yourself.
  super installOn: aTDTopezServer.
  TDTopezServer
    registerBuilderClass: TDStackNodeBuilder for: TDStack aspect: #'edit';
    registerBuilderClass: TDStackFrameNodeBuilder for: TDStackFrame aspect: #'edit'