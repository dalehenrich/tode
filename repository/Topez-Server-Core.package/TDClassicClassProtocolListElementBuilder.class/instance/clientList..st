accessing
clientList: listElement
  | items ar classDef isMeta selectors |
  items := {(self allProtocol)}
    ,
      (self object theBehavior categoryNames do: [ :each | each asString ]) sorted.
  ar := items copy asArray.
  classDef := self object asTDClassDefinition.
  isMeta := self object theBehavior isMeta.
  listElement ifNotNil: [ listElement itemCache: items ].
  ^ ar -> nil