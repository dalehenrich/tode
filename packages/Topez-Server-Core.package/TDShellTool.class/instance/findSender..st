as yet unclassified
findSender: findTokens
  "find sender <pattern>"

  | regex |
  regex := self findRegex: findTokens.
  ^ SystemNavigation default regexSendersOf: regex