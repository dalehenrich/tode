as yet unclassified
findSender: findTokens
  "find sender <pattern>"

  | regex |
  regex := self findRegex: findTokens.
  regex ifNil: [ ^ #() ].
  ^ SystemNavigation default regexSendersOf: regex