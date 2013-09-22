as yet unclassified
testRemove
  | clsTool |
  clsTool := self tool.
  Smalltalk at: self mockClassName asSymbol ifAbsent: [ self assert: false ].
  clsTool clsremove: self mockClass.
  Smalltalk at: self mockClassName asSymbol ifPresent: [ self assert: false ]