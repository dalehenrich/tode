as yet unclassified
findRegexMethod: findTokens
  "find rmethod <regex-pattern>"

  | regex methodRefs |
  regex := self findRegex: findTokens.
  regex ifNil: [ ^ #() ].
  methodRefs := Smalltalk systemNavigation
    allMethodsNoDoitsSelect: [ :m | regex search: m selector asString ].
  ^ self
    methodDefinitionsFor: methodRefs asArray
    messagePattern: (findTokens at: 2)
    isRegex: true