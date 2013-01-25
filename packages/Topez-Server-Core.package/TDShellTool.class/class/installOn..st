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
    registerBuilderClass: TDSpecialNodeBuilder for: Boolean aspect: #'edit';
    registerBuilderClass: TDSpecialNodeBuilder for: Boolean aspect: #'inspect';
    registerBuilderClass: TDSpecialNodeBuilder for: UndefinedObject aspect: #'edit';
    registerBuilderClass: TDSpecialNodeBuilder for: UndefinedObject aspect: #'inspect';
    registerBuilderClass: TDSpecialNodeBuilder for: Number aspect: #'edit';
    registerBuilderClass: TDSpecialNodeBuilder for: Number aspect: #'inspect';
    registerBuilderClass: TDIntegerNodeBuilder for: Integer aspect: #'edit';
    registerBuilderClass: TDIntegerNodeBuilder for: Integer aspect: #'inspect';
    registerBuilderClass: TDCharacterNodeBuilder for: Character aspect: #'edit';
    registerBuilderClass: TDCharacterNodeBuilder for: Character aspect: #'inspect';
    registerBuilderClass: TDTxtLeafNodeBuilder for: CharacterCollection aspect: #'edit';
    registerBuilderClass: TDObjectNodeBuilder for: Object aspect: #'inspect';
    registerEditorClass: TDClassHierarchyListElementBuilder for: Class aspect: #'edit';
    registerEditorClass: TDClientObjectElementBuilder for: Class aspect: #'inspect';
    registerEditorClass: TDClientObjectElementBuilder for: Object aspect: #'edit';
    registerEditorClass: TDDirectoryNodeClientListElementBuilder for: TDDirectoryNode aspect: #'edit';
    registerEditorClass: TDClientSourceElementBuilder for: TDLeafNode aspect: #'edit';
    registerEditorClass: TDClientSourceElementBuilder for: CharacterCollection aspect: #'edit';
    registerEditorClass: TDClientScriptElementBuilder for: TDScriptLeafNode aspect: #'edit';
    registerEditorClass: TDClientCodeElementBuilder for: TDSmalltalkLeafNode aspect: #'edit';
    registerEditorClass: TDClientTextElementBuilder for: TDTxtLeafNode aspect: #'edit'