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
  protocolSize := ar size.
  classDef := self object asTDClassDefinition.
  isMeta := self object theBehavior isMeta.
  items add: '----------'.
  ar add: '----------' asText allBold.
  self selectedProtocol = self allProtocol
    ifTrue: [ selectors := self object theBehavior selectors ]
    ifFalse: [ selectors := self object theBehavior selectorsIn: self selectedProtocol ].
  selectors := selectors sorted.
  selectors
    do: [ :selector | 
      items add: (classDef methodDefinitionFor: selector isMeta: self isMeta).
      ar add: selector ].
  listElement ifNotNil: [ listElement itemCache: items ].
  ^ ar -> nil