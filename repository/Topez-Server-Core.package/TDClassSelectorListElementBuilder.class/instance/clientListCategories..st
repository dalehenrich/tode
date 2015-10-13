accessing
clientListCategories: listElement
  | items ar beh className |
  items := OrderedCollection new.
  ar := OrderedCollection new.
  className := self theClass name.
  beh := self theBehavior.
  beh categories sorted
    do: [ :category | 
      ar add: ('--' , category asString) asText allBold.
      items
        add:
          (TDClientListItemAttributes
            object: (self object asTDProtocolDefinition: category asString)
            parent: nil
            aspect: listElement aspect).
      (beh selectorsIn: category) sorted
        do: [ :selector | 
          ar add: ('' , selector asString) asText.
          items
            add:
              (TDClientListItemAttributes
                object: (self methodDefinitionFor: selector)
                parent: nil
                aspect: listElement aspect) ] ].
  listElement ~~ nil
    ifTrue: [ listElement itemCache: items ].
  ^ ar asArray -> nil