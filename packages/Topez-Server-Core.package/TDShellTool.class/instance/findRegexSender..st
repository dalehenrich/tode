as yet unclassified
findRegexSender: findTokens
  "find rsender <regex-pattern>"

  | regex methodRefs |
  regex := self findRegex: findTokens.
  regex ifNil: [ ^ #() ].
  methodRefs := (Smalltalk systemNavigation regexSendersOf: regex)
    collect: [ :gsMethod | MethodReference class: gsMethod inClass selector: gsMethod selector ].
  ^ self methodDefinitionsFor: methodRefs messagePattern: regex isRegex: true