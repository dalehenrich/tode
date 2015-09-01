accessing
clientList: listElement
  | items ar className isMeta selectors |
  ar := {(self allProtocol)}
    ,
      (self object theBehavior categoryNames do: [ :each | each asString ]) sorted.
  className := self object asTDClassDefinition className.
  isMeta := self object theBehavior isMeta.
  items := ar
    collect: [ :protocol | 
      | def |
      def := TDProtocolDefinition
        className: className
        isMeta: isMeta
        protocol: protocol.
      protocol = self allProtocol
        ifTrue: [ def syntheticProtocol: true ].
      def ].
  listElement ifNotNil: [ listElement itemCache: items ].
  ^ ar -> nil