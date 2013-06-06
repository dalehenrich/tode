as yet unclassified
clientList: listElement
  | items ar selectedIndex |
  items := OrderedCollection new.
  ar := OrderedCollection new.
  self
    classHierarchy: [ :className :indents | 
      | defs methodDefs |
      defs := classMap at: className.
      (defs at: 1)
        ifNotNil: [ :classDef | 
          classDef
            addToClientListFor: className
            names: ar
            items: items
            indents: indents
            aspect: listElement aspect ].
      methodDefs := (defs at: 2) sort: [ :a :b | a selector <= b selector ].
      methodDefs
        do: [ :methodDef | 
          methodDef
            addToClientListFor: className
            names: ar
            items: items
            indents: indents
            aspect: listElement aspect ] ].
  listElement ~~ nil
    ifTrue: [ listElement itemCache: items ].
  ^ ar