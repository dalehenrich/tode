as yet unclassified
installOn: aTDTopezServer
  "builder aspects are #view or #inspect, default builder aspect is #view
	default view aspect is #browse "

  | optionsNode |
  (aTDTopezServer ensureChildrenExistIn: '/home')
    readMe: self homeReadMe;
    yourself.
  super installOn: aTDTopezServer.
  self
    installExampleOn: aTDTopezServer;
    installOptionsOn: aTDTopezServer.
  (Smalltalk at: #'GSNMethod' ifAbsent: [  ]) ~~ nil
    ifTrue: [ 
      TDTopezServer
        registerEditorClass: TDGsNMethodElementBuilder
        for: (Smalltalk at: #'GsNMethod')
        aspect: #'method' ]
    ifFalse: [ 
      TDTopezServer
        registerEditorClass: TDGsNMethodElementBuilder
        for: (Smalltalk at: #'GsMethod')
        aspect: #'method' ].
  TDTopezServer
    registerBuilderClass: TDObjectNodeBuilder for: Object aspect: #'view';
    registerBuilderClass: TDObjectNodeBuilder for: Object aspect: #'inspect';
    registerBuilderClass: TDDictionaryNodeBuilder
      for: AbstractDictionary
      aspect: #'view';
    registerBuilderClass: TDSpecialNodeBuilder for: Boolean aspect: #'view';
    registerBuilderClass: TDSpecialNodeBuilder for: Boolean aspect: #'inspect';
    registerBuilderClass: TDSpecialNodeBuilder
      for: UndefinedObject
      aspect: #'view';
    registerBuilderClass: TDSpecialNodeBuilder
      for: UndefinedObject
      aspect: #'inspect';
    registerBuilderClass: TDSpecialNodeBuilder for: Number aspect: #'view';
    registerBuilderClass: TDSpecialNodeBuilder for: Number aspect: #'inspect';
    registerBuilderClass: TDIntegerNodeBuilder for: Integer aspect: #'view';
    registerBuilderClass: TDIntegerNodeBuilder for: Integer aspect: #'inspect';
    registerBuilderClass: TDCharacterNodeBuilder for: Character aspect: #'view';
    registerBuilderClass: TDCharacterNodeBuilder
      for: Character
      aspect: #'inspect';
    registerBuilderClass: TDTxtLeafNodeBuilder
      for: CharacterCollection
      aspect: #'view';
    registerBuilderClass: TDTxtLeafNodeBuilder for: Text aspect: #'view';
    registerEditorClass: TDClientObjectElementBuilder
      for: Object
      aspect: #'browse';
    registerEditorClass: TDClassAndMethodDefinitionsElementBuilder
      for: Collection
      aspect: #'definitionList';
    registerEditorClass: TDExternalClassAndMethodDefinitionsElementBuilder
      for: Collection
      aspect: #'externalDefinitionList';
    registerEditorClass: TDMethodDefinitionsElementBuilder
      for: Collection
      aspect: #'methodDefinitionList';
    registerEditorClass: TDConfigurationAndPackageDefinitionsElementBuilder
      for: TDDefinitionList
      aspect: #'browse';
    registerEditorClass: TDClassSelectorListElementBuilder
      for: Behavior
      aspect: #'classSelectors';
    registerEditorClass: TDClassSelectorListElementBuilder
      for: Behavior
      aspect: #'instanceSelectors';
    registerEditorClass: TDClassHierarchyListElementBuilder
      for: Behavior
      aspect: #'browse';
    registerEditorClass: TDClassDefinitionClientElementBuilder
      for: Class
      aspect: #'classDefinition';
    registerEditorClass: TDMethodDefinitionElementBuilder
      for: TDMethodDefinition
      aspect: #'method';
    registerEditorClass: TDMethodDefinitionElementBuilder
      for: TDMcMethodDefinition
      aspect: #'method';
    registerEditorClass: TDMethodDefinitionElementBuilder
      for: TDMcClassDefinition
      aspect: #'method';
    registerEditorClass: TDMethodDefinitionElementBuilder
      for: TDMethodVersionDefinition
      aspect: #'method';
    registerEditorClass: TDMethodDefinitionElementBuilder
      for: TDMethodTemplateDefinition
      aspect: #'method';
    registerEditorClass: TDDirectoryNodeClientListElementBuilder
      for: TDDirectoryNode
      aspect: #'browse';
    registerEditorClass: TDClientSourceElementBuilder
      for: TDLeafNode
      aspect: #'browse';
    registerEditorClass: TDClientSourceElementBuilder
      for: CharacterCollection
      aspect: #'browse';
    registerEditorClass: TDClientSourceElementBuilder
      for: Text
      aspect: #'browse';
    registerEditorClass: TDObjectLogElementBuilder
      for: TDObjectLog
      aspect: #'browse';
    registerEditorClass: TDClientScriptElementBuilder
      for: TDScriptLeafNode
      aspect: #'browse';
    registerEditorClass: TDClientCodeElementBuilder
      for: TDSmalltalkLeafNode
      aspect: #'browse';
    registerEditorClass: TDClientTextElementBuilder
      for: TDTxtLeafNode
      aspect: #'browse'