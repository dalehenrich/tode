as yet unclassified
installOn: aTDTopezServer
  | optionsNode |
  (aTDTopezServer installChildrenAt: '/home')
    readMe: self homeReadMe;
    yourself.
  super installOn: aTDTopezServer.
  self
    installExampleOn: aTDTopezServer;
    installOptionsOn: aTDTopezServer.
  TDTopezServer
    registerBuilderClass: TDTxtLeafNodeBuilder for: CharacterCollection aspect: #'edit';
    registerBuilderClass: TDObjectNodeBuilder for: Object aspect: #'inspect';
    registerEditorClass: TDDirectoryNodeClientListElementBuilder for: TDDirectoryNode aspect: #'edit';
    registerEditorClass: TDDirectoryNodeClientListElementBuilder for: Object aspect: #'inspect'