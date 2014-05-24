as yet unclassified
testRename
  | newName node |
  node := self createClassRefNode.
  newName := self mockAlternateClassName.
  Smalltalk at: self mockClassName asSymbol ifAbsent: [ self assert: false ].
  self evaluateCommandString: 'cls rename @' , node printString , ' ' , newName.
  Smalltalk at: self mockClassName asSymbol ifPresent: [ self assert: false ].
  Smalltalk at: newName asSymbol ifAbsent: [ self assert: false ].
  self evaluateCommandString: 'cls rename ' , newName , ' ' , self mockClassName.
  Smalltalk at: self mockClassName asSymbol ifAbsent: [ self assert: false ].
  Smalltalk at: newName asSymbol ifPresent: [ self assert: false ]