as yet unclassified
classHierarchy: elementBlock
  self
    processClassesBlock: [ 
      | classes |
      classes := Set new.
      {(Smalltalk classNamed: self object className)}
        do: [ :cl | 
          classes addAll: cl allSuperclasses.
          classes add: cl.
          classes addAll: cl allSubclasses ].
      classes ]
    elementBlock: elementBlock