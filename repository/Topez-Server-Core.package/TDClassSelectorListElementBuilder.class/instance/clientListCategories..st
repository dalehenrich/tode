as yet unclassified
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
            object:
              (TDProtocolDefinition new
                className: className;
                isMeta: beh isMeta;
                categoryName: category asString;
                yourself)
            parent: nil
            aspect: listElement aspect).
      (beh selectorsIn: category) sorted
        do: [ :selector | 
          ar add: ('  ' , selector asString) asText.
          items
            add:
              (TDClientListItemAttributes
                object: (self methodDefinitionFor: selector)
                parent: nil
                aspect: listElement aspect) ] ].
  listElement ~~ nil
    ifTrue: [ listElement itemCache: items ].
  ^ ar