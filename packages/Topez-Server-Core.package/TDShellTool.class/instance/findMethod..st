as yet unclassified
findMethod: findTokens
  "find method <pattern>"

  | regex |
  regex := self findRegex: findTokens.
  ^ SystemNavigation default allMethodsNoDoitsSelect: [ :m | regex search: m selector asString ]