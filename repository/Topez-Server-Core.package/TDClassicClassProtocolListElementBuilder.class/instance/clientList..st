accessing
clientList: listElement
  | items ar className isMeta selectors |
  ar := {(self allProtocol)}
    ,
      (self object theBehavior categoryNames do: [ :each | each asString ]) sorted.
  className := self object className.
  isMeta := self object isMeta.
  items := ar
    collect: [ :protocol | 
      | def |
      def := self object asTDProtocolDefinition: protocol.
      protocol = self allProtocol
        ifTrue: [ def syntheticProtocol: true ].
      def ].
  listElement ifNotNil: [ listElement itemCache: items ].
  ^ ar -> nil