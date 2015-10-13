accessing
clientList: listElement
  | items ar beh selectors |
  items := OrderedCollection new.
  ar := OrderedCollection new.
  beh := self theBehavior.
  selectors := self object protocol = TDProtocolDefinition allSelectorsProtocol
    ifTrue: [ beh selectors ]
    ifFalse: [ beh selectorsIn: self object protocol ].
  selectors sorted
    do: [ :selector | 
      ar add: selector asString.
      items
        add:
          (TDClientListItemAttributes
            object: (self methodDefinitionFor: selector)
            parent: nil
            aspect: listElement aspect) ].
  listElement ~~ nil
    ifTrue: [ listElement itemCache: items ].
  ^ ar asArray -> nil