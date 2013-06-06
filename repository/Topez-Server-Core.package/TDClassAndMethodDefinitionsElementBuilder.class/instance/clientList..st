as yet unclassified
clientList: listElement
  | items ar selectedIndex |
  items := OrderedCollection new.
  ar := OrderedCollection new.
  self
    classHierarchy: [ :className :indents | 
      (classMap at: className)
        addToClientListFor: className
        names: ar
        items: items
        indents: indents
        aspect: listElement aspect ].
  listElement ~~ nil
    ifTrue: [ listElement itemCache: items ].
  ^ ar