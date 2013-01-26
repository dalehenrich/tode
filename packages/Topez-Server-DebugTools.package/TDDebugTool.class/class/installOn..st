as yet unclassified
installOn: aTDTopezServer
  "#browse #view #inspect ... #view is default"

  "`edit` ---> #browse [[editor only aspect]]
   `view` ---> #view
   `inspect` ---> #inspect"

  aTDTopezServer installChildrenAt: self commandPath.
  self
    installHalosOn: aTDTopezServer;
    yourself.
  super installOn: aTDTopezServer.
  self
    installExampleOn: aTDTopezServer;
    yourself.
  TDTopezServer
    registerBuilderClass: TDStackNodeBuilder for: TDStack aspect: #'view';
    registerBuilderClass: TDStackFrameNodeBuilder for: TDStackFrame aspect: #'view';
    registerEditorClass: TDStackClientListElementBuilder for: TDStack aspect: #'view';
    registerEditorClass: TDStackFrameContentsClientListElementBuilder for: TDStackFrame aspect: #'contents';
    registerEditorClass: TDStackFrameMethodElementBuilder for: TDStackFrame aspect: #'source'