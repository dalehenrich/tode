as yet unclassified
classHierarchyOrder: definitionList
  | sortedDefs classMap |
  sortedDefs := Array new.
  classMap := Dictionary new.
  self
    processClassesBlock: [ 
      | classes |
      classes := IdentitySet new.
      definitionList
        do: [ :each | 
          | cl defs |
          cl := each theClass.
          classes add: cl.
          defs := classMap
            at: cl name
            ifAbsent: [ classMap at: cl name put: Array new ].
          defs add: each ].
      classes ]
    elementBlock: [ :cl :indents | 
      | defs |
      defs := (classMap at: cl name) sort: [ :a :b | a label <= b label ].
      sortedDefs addAll: defs ].
  ^ sortedDefs