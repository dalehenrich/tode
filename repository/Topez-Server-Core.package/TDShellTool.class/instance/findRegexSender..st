as yet unclassified
findRegexSender: regexPattern
  "find rsender <regex-pattern>"

  | regex methodRefs |
  regex := self findRegex: regexPattern.
  regex ifNil: [ ^ #() ].
  methodRefs := (Smalltalk systemNavigation regexSendersOf: regex)
    collect: [ :gsMethod | MethodReference class: gsMethod inClass selector: gsMethod selector ].
  ^ self
    methodDefinitionsFor: methodRefs asArray
    messagePattern: regexPattern
    isRegex: true