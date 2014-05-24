as yet unclassified
installOn: aTDTopezServer
  "self install"

  "builder:
	 #view		- normal view (i.e., collection of associations for Dictionary)
	 #inspect - raw object/implementation view

   editor:
	 #edit		 - text code editor (falls back to #navigate)
	 #navigate - structural access via navigator
	 CUSTOM    - custom names for specialized window access"

  | optionsNode compiledMethodClass dictionaryClass stringClass |
  (aTDTopezServer ensureChildrenExistIn: '/home')
    readMe: self homeReadMe;
    yourself.
  super installOn: aTDTopezServer.
  self
    installExampleOn: aTDTopezServer;
    installOptionsOn: aTDTopezServer.
  compiledMethodClass := Smalltalk
    at: #'GsNMethod'
    ifAbsent: [ Smalltalk at: #'GsMethod' ifAbsent: [ Smalltalk at: #'CompiledMethod' ] ].
  dictionaryClass := Smalltalk
    at: #'AbstractDictionary'
    ifAbsent: [ Smalltalk at: #'Dictionary' ].
  stringClass := Smalltalk
    at: #'CharacterCollection'
    ifAbsent: [ Smalltalk at: #'String' ].
  TDTopezServer
    registerEditorClass: TDGsNMethodElementBuilder
      for: compiledMethodClass
      aspect: #'method';
    registerBuilderClass: TDDictionaryNodeBuilder
      for: dictionaryClass
      aspect: #'view';
    registerEditorClass: TDClientSourceElementBuilder
      for: stringClass
      aspect: #'edit';
    registerEditorClass: TDWorkspaceClientElementBuilder
      for: stringClass
      aspect: #'workspace';
    yourself.
  Smalltalk
    at: #'TDObjectLog'
    ifPresent: [ :cl | 
      TDTopezServer
        registerEditorClass: TDObjectLogElementBuilder
        for: cl
        aspect: #'logEntries' ].
  TDTopezServer
    registerBuilderClass: TDObjectNodeBuilder for: Object aspect: #'view';
    registerBuilderClass: TDObjectNodeBuilder for: Object aspect: #'inspect';
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
    registerBuilderClass: TDCharacterCollectionNodeBuilder
      for: stringClass
      aspect: #'view';
    registerBuilderClass: TDCharacterCollectionNodeBuilder
      for: stringClass
      aspect: #'inspect';
    registerBuilderClass: TDCollectionNodeBuilder
      for: Collection
      aspect: #'view';
    registerBuilderClass: TDCollectionNodeBuilder
      for: Collection
      aspect: #'inspect';
    registerBuilderClass: TDUnorderedCollectionNodeBuilder
      for: UnorderedCollection
      aspect: #'view';
    registerBuilderClass: TDUnorderedCollectionNodeBuilder
      for: UnorderedCollection
      aspect: #'inspect';
    registerEditorClass: TDMiniToolClientListElementBuilder
      for: Object
      aspect: #'miniTool';
    registerEditorClass: TDClientObjectElementBuilder
      for: Object
      aspect: #'navigate';
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
      aspect: #'definitionList';
    registerEditorClass: TDClassHierarchyListElementBuilder
      for: TDClassDefinition
      aspect: #'hierarchyList';
    registerEditorClass: TDClassSelectorListElementBuilder
      for: TDClassDefinition
      aspect: #'classSelectors';
    registerEditorClass: TDClassSelectorListElementBuilder
      for: TDClassDefinition
      aspect: #'instanceSelectors';
    registerEditorClass: TDClassDefinitionClientElementBuilder
      for: Class
      aspect: #'classDefinition';
    registerEditorClass: TDClassDefinitionClientElementBuilder
      for: TDClassDefinition
      aspect: #'classDefinition';
    registerEditorClass: TDClassHistorySelectorListElementBuilder
      for: Behavior
      aspect: #'historyClassSelectors';
    registerEditorClass: TDClassHistorySelectorListElementBuilder
      for: Behavior
      aspect: #'historyInstanceSelectors';
    registerEditorClass: TDClassHistoryDefinitionClientElementBuilder
      for: Class
      aspect: #'historyClassDefinition';
    registerEditorClass: TDClassCommentElementBuilder
      for: Class
      aspect: #'classComment';
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
      aspect: #'edit';
    registerEditorClass: TDClientSourceLeafNodeElementBuilder
      for: TDLeafNode
      aspect: #'edit';
    registerEditorClass: TDClientSourceElementBuilder for: Text aspect: #'edit';
    registerEditorClass: TDClientScriptElementBuilder
      for: TDScriptLeafNode
      aspect: #'edit';
    registerEditorClass: TDClientCodeElementBuilder
      for: TDSmalltalkLeafNode
      aspect: #'edit';
    registerEditorClass: TDClientCodeElementBuilder
      for: TDObjectGatewayNode
      aspect: #'edit';
    registerEditorClass: TDClientTextElementBuilder
      for: TDTxtLeafNode
      aspect: #'edit';
    registerEditorClass: TDClientMergeOperationSourceElementBuilder
      for: TDMergeOperation
      aspect: #'edit';
    yourself