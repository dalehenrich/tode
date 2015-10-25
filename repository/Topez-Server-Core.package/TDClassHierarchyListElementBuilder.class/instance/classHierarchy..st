accessing
classHierarchy: elementBlock
  self baseClassDefinitionList size = 1
    ifTrue: [ 
      | classDef |
      classDef := self baseClassDefinitionList first.
      selectedClass := classDef theClass ].
  TDClassDefinition
    processClassDefinitionsBlock: [ self classDefinitionList ]
    elementBlock: elementBlock