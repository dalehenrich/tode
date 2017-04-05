accessing
clientList: listElement
  | items ar selectedIndex |
  items := OrderedCollection new.
  ar := OrderedCollection new.
  self
    classHierarchy: [ :classDef :indents | 
      | defs methodDefs |
      defs := classMap at: classDef className.
      (defs at: 1)
        ifNotNil: [ :def | 
          def
            addToClientListFor: classDef
            names: ar
            items: items
            indents: indents
            aspect: listElement aspect ].
      methodDefs := (defs at: 2) sort: [ :a :b | a selector <= b selector ].
      methodDefs
        do: [ :methodDef | 
          methodDef
            addToClientListFor: classDef
            names: ar
            items: items
            indents: indents
            aspect: listElement aspect ] ].
  listElement ~~ nil
    ifTrue: [ listElement itemCache: items ].
  ^ ar -> nil