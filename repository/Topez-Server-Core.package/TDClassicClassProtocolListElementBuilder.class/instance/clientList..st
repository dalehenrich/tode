accessing
clientList: listElement
  | appEnv items ar className isMeta selectors |
  listElement ifNotNil: [ appEnv := listElement topez applicationEnvironment ].
  ar := {(self allProtocol)}
    ,
      ((appEnv categoryNamesFor: self object theBehavior)
        collect: [ :each | each asString ]) sorted.
  className := self object className.
  isMeta := self object isMeta.
  items := ar
    collect: [ :protocol | 
      | def |
      def := (self object asTDProtocolDefinition: protocol)
        appEnv: appEnv;
        yourself.
      protocol = self allProtocol
        ifTrue: [ def syntheticProtocol: true ].
      def ].
  listElement ifNotNil: [ listElement itemCache: items ].
  ^ ar -> nil