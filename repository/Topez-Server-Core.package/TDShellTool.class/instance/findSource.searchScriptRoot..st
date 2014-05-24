as yet unclassified
findSource: regexPattern searchScriptRoot: path
  "find [--scriptPath=<tode-path>] source <regex-pattern>"

  | regex rootSearchNode leafNodes |
  path ifNil: [ ^ self findSource: regexPattern ].
  regex := self findRegex: regexPattern.
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