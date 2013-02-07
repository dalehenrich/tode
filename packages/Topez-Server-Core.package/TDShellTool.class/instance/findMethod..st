as yet unclassified
findMethod: findTokens
  "find method <pattern>"

  | regex |
  regex := self findRegex: findTokens.
  regex ifNil: [ ^ #() ].
  ^ SystemNavigation default allMethodsNoDoitsSelect: [ :m | regex search: m selector asString ]