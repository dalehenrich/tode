as yet unclassified
findRegexSender: findTokens
  "find rsender <regex-pattern>"

  | regex |
  regex := self findRegex: findTokens.
  regex ifNil: [ ^ #() ].
  ^ (SystemNavigation default regexSendersOf: regex)
    collect: [ :gsMethod | MethodReference class: gsMethod inClass selector: gsMethod selector ]