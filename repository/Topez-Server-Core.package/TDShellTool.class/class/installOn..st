as yet unclassified
installOn: aTDTopezServer
  "builder:
	 #view		- normal view (i.e., collection of associations for Dictionary)
	 #inspect - raw object/implementation view

   editor:
	 #edit		 - text code editor (falls back to #navigate)
	 #navigate - structural access via navigator
	 CUSTOM    - custom names for specialized window access"

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
      aspect: #'navigate';
    registerEditorClass: TDClassSelectorListElementBuilder
      for: Behavior
      aspect: #'classSelectors';
    registerEditorClass: TDClassSelectorListElementBuilder
      for: Behavior
      aspect: #'instanceSelectors';
    registerEditorClass: TDClassHierarchyListElementBuilder
      for: Behavior
      aspect: #'navigate';
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
      aspect: #'navigate';
    registerEditorClass: TDClientSourceElementBuilder
      for: TDLeafNode
      aspect: #'edit';
    registerEditorClass: TDClientSourceElementBuilder
      for: CharacterCollection
      aspect: #'edit';
    registerEditorClass: TDClientSourceElementBuilder for: Text aspect: #'edit';
    registerEditorClass: TDObjectLogElementBuilder
      for: TDObjectLog
      aspect: #'navigate';
    registerEditorClass: TDClientScriptElementBuilder
      for: TDScriptLeafNode
      aspect: #'edit';
    registerEditorClass: TDClientCodeElementBuilder
      for: TDSmalltalkLeafNode
      aspect: #'edit';
    registerEditorClass: TDClientTextElementBuilder
      for: TDTxtLeafNode
      aspect: #'edit'