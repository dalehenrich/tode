as yet unclassified
testRename
  | clsTool newName |
  clsTool := self tool.
  newName := self mockAlternateClassName.
  Smalltalk at: self mockClassName asSymbol ifAbsent: [ self assert: false ].
  clsTool clsrename: self mockClassName to: newName.
  Smalltalk at: self mockClassName asSymbol ifPresent: [ self assert: false ].
  Smalltalk at: newName asSymbol ifAbsent: [ self assert: false ]