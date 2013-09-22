as yet unclassified
tearDown
  | clsTool |
  super tearDown.
  clsTool := self tool.
  clsTool clsremove: self mockClassName.
  clsTool clsremove: self mockAlternateClassName