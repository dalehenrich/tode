as yet unclassified
tearDown
  | clsTool |
  super tearDown.
  clsTool := self tool.
  self mockClass ifNotNil: [ :cls | clsTool clsremove: cls ].
  self mockAlternateClass ifNotNil: [ :cls | clsTool clsremove: cls ]