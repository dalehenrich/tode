as yet unclassified
installOn: aTDTopezServer
  "#browse #view #inspect ... #view is default"

  "`edit` ---> #browse [[editor only aspect]]
   `view` ---> #view
   `inspect` ---> #inspect"

  | optionsNode |
  (aTDTopezServer installChildrenAt: '/home')
    readMe: self homeReadMe;
    yourself.
  super installOn: aTDTopezServer.
  self
    installExampleOn: aTDTopezServer;
    installOptionsOn: aTDTopezServer.
  TDTopezServer
    registerBuilderClass: TDSpecialNodeBuilder for: Boolean aspect: #'view';
    registerBuilderClass: TDSpecialNodeBuilder for: Boolean aspect: #'inspect';
    registerBuilderClass: TDSpecialNodeBuilder for: UndefinedObject aspect: #'view';
    registerBuilderClass: TDSpecialNodeBuilder for: UndefinedObject aspect: #'inspect';
    registerBuilderClass: TDSpecialNodeBuilder for: Number aspect: #'view';
    registerBuilderClass: TDSpecialNodeBuilder for: Number aspect: #'inspect';
    registerBuilderClass: TDIntegerNodeBuilder for: Integer aspect: #'view';
    registerBuilderClass: TDIntegerNodeBuilder for: Integer aspect: #'inspect';
    registerBuilderClass: TDCharacterNodeBuilder for: Character aspect: #'view';
    registerBuilderClass: TDCharacterNodeBuilder for: Character aspect: #'inspect';
    registerBuilderClass: TDTxtLeafNodeBuilder for: CharacterCollection aspect: #'view';
    registerBuilderClass: TDObjectNodeBuilder for: Object aspect: #'view';
    registerBuilderClass: TDObjectNodeBuilder for: Object aspect: #'inspect';
    registerEditorClass: TDClassHierarchyListElementBuilder for: Class aspect: #'browse';
    registerEditorClass: TDClientObjectElementBuilder for: Class aspect: #'inspect';
    registerEditorClass: TDClientObjectElementBuilder for: Object aspect: #'view';
    registerEditorClass: TDDirectoryNodeClientListElementBuilder for: TDDirectoryNode aspect: #'view';
    registerEditorClass: TDClientSourceElementBuilder for: TDLeafNode aspect: #'browse';
    registerEditorClass: TDClientSourceElementBuilder for: CharacterCollection aspect: #'browse';
    registerEditorClass: TDClientScriptElementBuilder for: TDScriptLeafNode aspect: #'browse';
    registerEditorClass: TDClientCodeElementBuilder for: TDSmalltalkLeafNode aspect: #'browse';
    registerEditorClass: TDClientTextElementBuilder for: TDTxtLeafNode aspect: #'browse'