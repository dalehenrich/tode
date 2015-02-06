as yet unclassified
findSource: regexPattern ignoreCase: ignoreCase
  | regex methodRefs |
  regex := self findRegex: regexPattern ignoreCase: ignoreCase.
  regex ifNil: [ ^ #() ].
  methodRefs := Smalltalk systemNavigation
    allMethodsNoDoitsSelect: [ :m | regex search: m sourceString ].
  ^ self
    methodDefinitionsFor: methodRefs asArray
    messagePattern: regexPattern
    isRegex: true