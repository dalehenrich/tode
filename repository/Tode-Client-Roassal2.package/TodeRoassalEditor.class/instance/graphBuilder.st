accessing
graphBuilder
  graphBuilder
    ifNil: [ graphBuilder := self createGraphBuilder ].
  ^ graphBuilder