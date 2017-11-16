accessing
clientList: listElement
  | items ar beh selectors appEnv |
  appEnv := listElement topez applicationEnvironment.
  items := OrderedCollection new.
  ar := OrderedCollection new.
  beh := self theBehavior.
  selectors := self object protocol = TDProtocolDefinition allSelectorsProtocol
    ifTrue: [ appEnv selectorsFor: beh ]
    ifFalse: [ appEnv selectorsFor: beh in: self object protocol ].
  selectors sorted
    do: [ :selector | 
      ar add: selector asString.
      items
        add:
          (TDClientListItemAttributes
            object:
              ((self methodDefinitionFor: selector)
                appEnv: appEnv;
                yourself)
            parent: nil
            aspect: listElement aspect) ].
  listElement ~~ nil
    ifTrue: [ listElement itemCache: items ].
  ^ ar asArray -> nil