as yet unclassified
classHierarchy: elementBlock
  self baseClassNamesList size = 1
    ifTrue: [ 
      | className |
      className := self baseClassNamesList first.
      selectedClass := Smalltalk classNamed: className ].
  TDClassDefinition
    processClassNamesBlock: [ self classNamesList ]
    elementBlock: elementBlock