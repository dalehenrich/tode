as yet unclassified
block
  block
    ifNil: [ block := self createBlockFromSource: self contents silently: true ].
  ^ block