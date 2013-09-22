as yet unclassified
testCopy
  | clsTool clsName newName |
  clsTool := self tool.
  clsName := self mockClassName.
  newName := self mockAlternateClassName.
  Smalltalk at: clsName asSymbol ifAbsent: [ self assert: false ].
  clsTool clscopy: clsName to: newName.
  Smalltalk at: clsName asSymbol ifAbsent: [ self assert: false ].
  Smalltalk at: newName asSymbol ifAbsent: [ self assert: false ]