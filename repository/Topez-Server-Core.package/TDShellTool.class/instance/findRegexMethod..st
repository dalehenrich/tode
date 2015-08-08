find
findRegexMethod: regexPattern
  "find rmethod <regex-pattern>"

  | regex methodRefs |
  regex := self findRegex: regexPattern.
  regex ifNil: [ ^ #() ].
  methodRefs := Smalltalk systemNavigation
    allMethodsNoDoitsSelect: [ :m | regex search: m selector asString ].
  ^ self
    methodDefinitionsFor: methodRefs asArray
    messagePattern: regexPattern
    isRegex: true