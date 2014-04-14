as yet unclassified
findSource: regexPattern
  "find [--scriptPath=<tode-path>] source <regex-pattern>"

  | regex methodRefs |
  regex := self findRegex: regexPattern.
  regex ifNil: [ ^ #() ].
  methodRefs := Smalltalk systemNavigation
    allMethodsNoDoitsSelect: [ :m | regex search: m sourceString ].
  ^ self
    methodDefinitionsFor: methodRefs asArray
    messagePattern: regexPattern
    isRegex: true