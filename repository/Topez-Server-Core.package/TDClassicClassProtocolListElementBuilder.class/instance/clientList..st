as yet unclassified
clientList: listElement
  | items ar classDef isMeta selectors |
  items := {(self allProtocol)}
    ,
      (self object theBehavior categoryNames do: [ :each | each asString ]) sorted.
  ar := {}.
  items
    do: [ :each | 
      each = self selectedProtocol
        ifTrue: [ ar add: (Text string: each attribute: TextEmphasis bold) ]
        ifFalse: [ ar add: (Text string: each attribute: TextEmphasis italic) ] ].
  classDef := self object asTDClassDefinition.
  isMeta := self object theBehavior isMeta.
  listElement ifNotNil: [ listElement itemCache: items ].
  ^ ar -> nil