as yet unclassified
findSource: findTokens
  "find source <regex-pattern>"

  | regex methodRefs |
  regex := self findRegex: findTokens.
  regex ifNil: [ ^ #() ].
  methodRefs := Smalltalk systemNavigation
    allMethodsNoDoitsSelect: [ :m | regex search: m sourceString ].
  ^ self
    methodDefinitionsFor: methodRefs asArray
    messagePattern: (findTokens at: 2)
    isRegex: true