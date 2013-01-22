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
    registerBuilderClass: TDStackFrameNodeBuilder for: TDStackFrame aspect: #'edit';
    registerEditorClass: TDStackClientListElementBuilder for: TDStack aspect: #'edit';
    registerEditorClass: TDStackFrameContentsClientListElementBuilder for: TDStackFrame aspect: #'contents';
    registerEditorClass: TDStackFrameMethodElementBuilder for: TDStackFrame aspect: #'source'