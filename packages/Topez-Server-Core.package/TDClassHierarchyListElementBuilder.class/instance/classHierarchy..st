as yet unclassified
classHierarchy: elementBlock
  self
    processClassesBlock: [ 
      | classes baseClass |
      baseClass := self object isBehavior
        ifTrue: [ self object theNonMetaClass ]
        ifFalse: [ self object class theNonMetaClass ].
      classes := Set new.
      {(Smalltalk classNamed: baseClass className)}
        do: [ :cl | 
          classes addAll: cl allSuperclasses.
          classes add: cl.
          classes addAll: cl allSubclasses ].
      classes ]
    elementBlock: elementBlock