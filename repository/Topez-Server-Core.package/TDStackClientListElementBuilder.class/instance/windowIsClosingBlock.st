as yet unclassified
windowIsClosingBlock
  ^ [ :listElement | self object process ifNotNil: [ :proc | proc terminate ] ]