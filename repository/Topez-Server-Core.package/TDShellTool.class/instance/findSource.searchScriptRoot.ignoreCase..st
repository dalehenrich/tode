as yet unclassified
findSource: regexPattern searchScriptRoot: path ignoreCase: ignoreCase
  | regex rootSearchNode leafNodes |
  path ifNil: [ ^ self findSource: regexPattern ignoreCase: ignoreCase ].
  regex := self findRegex: regexPattern ignoreCase: ignoreCase.
  regex ifNil: [ ^ #() ].
  rootSearchNode := self topez lookup: path.
  leafNodes := IdentitySet new.
  TDLeafNodeSourceVisitor
    topez: self topez
    visitNode: rootSearchNode
    andDo: [ :leafNode | 
      (regex search: leafNode elementSource)
        ifTrue: [ leafNodes add: leafNode ] ].
  ^ leafNodes asArray sort: [ :a :b | a printString < b printString ]