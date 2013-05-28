as yet unclassified
clientList: listElement
  | items ar |
  items := OrderedCollection new.
  ar := OrderedCollection new.
  self object definitionList
    do: [ :definition | 
      ar add: definition label asText allBold.
      items
        add:
          (TDClientListItemAttributes
            object: definition
            parent: nil
            aspect: listElement aspect) ].
  listElement ~~ nil
    ifTrue: [ 
      listElement itemCache: items.
      listElement selectedIndex: self object selectedIndex ].
  ^ ar