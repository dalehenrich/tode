as yet unclassified
classHierarchy: elementBlock
  self baseClassList size = 1
    ifTrue: [ 
      | cl |
      cl := self baseClassList first.
      selectedClass := Smalltalk classNamed: cl name ].
  TDClassDefinition
    processClassesBlock: [ self classList ]
    elementBlock: elementBlock