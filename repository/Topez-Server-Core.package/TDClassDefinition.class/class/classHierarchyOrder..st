as yet unclassified
classHierarchyOrder: definitionList
  | sortedDefs |
  sortedDefs := Array new.
  self
    processClassDefinitionsBlock: [ definitionList ]
    elementBlock: [ :classDefinition :indents | sortedDefs add: classDefinition ].
  ^ sortedDefs