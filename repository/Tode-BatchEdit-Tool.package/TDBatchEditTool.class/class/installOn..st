as yet unclassified
installOn: aTDTopezServer
  aTDTopezServer ensureChildrenExistIn: self commandPath.
  super installOn: aTDTopezServer.
  TDTopezServer
    registerEditorClass: TDBatchEditMethodDefinitionsElementBuilder
      for: TDBatchEditor
      aspect: #'batchEditList';
    registerEditorClass: TDBatchEditMethodDefinitionElementBuilder
      for: TDBatchEditMethodDefinition
      aspect: #'method'