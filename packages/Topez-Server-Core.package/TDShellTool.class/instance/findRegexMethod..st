as yet unclassified
findRegexMethod: findTokens
  "find rmethod <regex-pattern>"

  | regex methodRefs |
  regex := self findRegex: findTokens.
  regex ifNil: [ ^ #() ].
  methodRefs := Smalltalk systemNavigation
    allMethodsNoDoitsSelect: [ :m | regex search: m selector asString ].
  ^ self methodDefinitionsFor: methodRefs messagePattern: regex isRegex: true