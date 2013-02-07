as yet unclassified
clientList: listElement
  | items ar selectedIndex |
  items := Array new.
  ar := Array new.
  self
    classHierarchy: [ :cl :indents | 
      | defs |
      defs := (classMap at: cl name) sort: [ :a :b | a selector <= b selector ].
      defs
        do: [ :def | 
          def
            addToClientListFor: cl
            names: ar
            items: items
            indents: indents
            aspect: listElement aspect ] ].
  listElement ~~ nil
    ifTrue: [ listElement itemCache: items ].
  ^ ar