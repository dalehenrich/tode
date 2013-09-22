as yet unclassified
setUp
  | clsTool mockClass |
  super setUp.
  clsTool := self tool.
  mockClass := clsTool
    clscreate: self mockClassName
    superClass: Object
    category: self mockClassCategory.
  mockClass comment: self mockClassComment