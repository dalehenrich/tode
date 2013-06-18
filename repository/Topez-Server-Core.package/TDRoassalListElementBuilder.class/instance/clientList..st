as yet unclassified
clientList: listElement
  | items ar beh className |
  items := OrderedCollection new.
  ar := OrderedCollection new.
  (listElement theObject at: 1)
    do: [ :str | 
      ar add: str.
      items
        add:
          (TDClientListItemAttributes object: {str} parent: nil aspect: listElement aspect) ].
  listElement ~~ nil
    ifTrue: [ listElement itemCache: items ].
  ^ ar