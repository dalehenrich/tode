as yet unclassified
testCreate
  | clsTool |
  clsTool := self tool.
  Smalltalk
    at: self mockAlternateClassName asSymbol
    ifPresent: [ self assert: false ].
  clsTool
    clscreate: self mockAlternateClassName
    superClass: Object
    category: self mockClassCategory.
  Smalltalk
    at: self mockAlternateClassName asSymbol
    ifAbsent: [ self assert: false ]