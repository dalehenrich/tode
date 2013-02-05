as yet unclassified
clientList: listElement
  | items ar selectedIndex |
  items := Array new.
  ar := Array new.
  self object definitionList
    do: [ :definition | 
      ar add: definition label asText allBold.
      self selectedDefinition == definition
        ifTrue: [ selectedIndex := ar size ].
      items add: (TDClientListItemAttributes object: definition parent: nil aspect: listElement aspect) ].
  listElement ~~ nil
    ifTrue: [ 
      listElement itemCache: items.
      listElement selectedIndex: selectedIndex ].
  ^ ar