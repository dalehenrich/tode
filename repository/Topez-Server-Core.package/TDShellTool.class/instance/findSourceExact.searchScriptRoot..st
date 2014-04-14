as yet unclassified
findSourceExact: searchString searchScriptRoot: path
  "find [--scriptPath=<tode-path>] source <regex-pattern>"

  | rootSearchNode leafNodes |
  path ifNil: [ ^ self findSourceExact: searchString ].
  rootSearchNode := self topez lookup: path.
  leafNodes := IdentitySet new.
  TDLeafNodeSourceVisitor
    topez: self topez
    visitNode: rootSearchNode
    andDo: [ :leafNode | 
      (leafNode elementSource includesSubString: searchString)
        ifTrue: [ leafNodes add: leafNode ] ].
  ^ leafNodes asArray sort: [ :a :b | a printString < b printString ]