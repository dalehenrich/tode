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
    registerEditorClass: TDClientObjectElementBuilder for: Object aspect: #'edit';
    registerEditorClass: TDDirectoryNodeClientListElementBuilder for: TDDirectoryNode aspect: #'edit';
    registerEditorClass: TDClientSourceElementBuilder for: TDLeafNode aspect: #'edit';
    registerEditorClass: TDClientScriptElementBuilder for: TDScriptLeafNode aspect: #'edit';
    registerEditorClass: TDClientCodeElementBuilder for: TDSmalltalkLeafNode aspect: #'edit';
    registerEditorClass: TDClientTextElementBuilder for: TDTxtLeafNode aspect: #'edit'