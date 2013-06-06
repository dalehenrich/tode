as yet unclassified
classHierarchyOrder: definitionList
  | sortedDefs classMap |
  sortedDefs := Array new.
  classMap := Dictionary new.
  self
    processClassNamesBlock: [ 
      | classNames |
      classNames := IdentitySet new.
      definitionList
        do: [ :each | 
          | cl defs |
          cl := each theClass.
          classNames add: cl name.
          defs := classMap
            at: cl name
            ifAbsent: [ classMap at: cl name put: OrderedCollection new ].
          defs add: each ].
      classNames ]
    elementBlock: [ :className :indents | 
      | defs |
      defs := (classMap at: className) sort: [ :a :b | a label <= b label ].
      sortedDefs addAll: defs ].
  ^ sortedDefs