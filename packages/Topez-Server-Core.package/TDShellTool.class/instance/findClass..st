as yet unclassified
findClass: findTokens
  "find class <regex-pattern>"

  | regex |
  regex := self findRegex: findTokens.
  regex ifNil: [ ^ #() ].
  ^ SystemNavigation default allClasses asArray select: [ :cls | regex search: cls name asString ]