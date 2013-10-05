as yet unclassified
clientList: listElement
  | items ar selectedIndex |
  items := OrderedCollection new.
  ar := OrderedCollection new.
  self
    classHierarchy: [ :classDef :indents | 
      classDef
        addToClientListFor: classDef
        names: ar
        items: items
        indents: indents
        aspect: listElement aspect ].
  listElement ~~ nil
    ifTrue: [ listElement itemCache: items ].
  ^ ar