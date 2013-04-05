as yet unclassified
installOn: aTDTopezServer
  "#browse #view #inspect ... #view is default"

  "`edit` ---> #browse [[editor only aspect]]
   `view` ---> #view
   `inspect` ---> #inspect"

  aTDTopezServer ensureChildrenExistIn: self commandPath.
  self
    installHalosOn: aTDTopezServer;
    yourself.
  super installOn: aTDTopezServer.
  self
    installExampleOn: aTDTopezServer;
    yourself.
  TDTopezServer
    registerBuilderClass: TDStackNodeBuilder for: TDStack aspect: #'view';
    registerEditorClass: TDStackClientListElementBuilder
      for: TDStack
      aspect: #'view'