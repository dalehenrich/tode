as yet unclassified
findSourceExact: searchString searchScriptRoot: path ignoreCase: ignoreCase
  | rootSearchNode leafNodes |
  path ifNil: [ ^ self findSourceExact: searchString ].
  rootSearchNode := self topez lookup: path.
  leafNodes := IdentitySet new.
  TDLeafNodeSourceVisitor
    topez: self topez
    visitNode: rootSearchNode
    andDo: [ :leafNode | 
      (leafNode elementSource
        findString: searchString
        startingAt: 1
        caseSensitive: ignoreCase not) > 0
        ifTrue: [ leafNodes add: leafNode ] ].
  ^ leafNodes asArray sort: [ :a :b | a printString < b printString ]