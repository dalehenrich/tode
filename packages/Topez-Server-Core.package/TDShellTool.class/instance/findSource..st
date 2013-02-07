as yet unclassified
findSource: findTokens
  "find source <pattern>"

  | regex |
  regex := self findRegex: findTokens.
  regex ifNil: [ ^ #() ].
  ^ SystemNavigation default allMethodsNoDoitsSelect: [ :m | regex search: m sourceString ]