as yet unclassified
findRegexMethod: findTokens
  "find rmethod <regex-pattern>"

  | regex |
  regex := self findRegex: findTokens.
  regex ifNil: [ ^ #() ].
  ^ SystemNavigation default allMethodsNoDoitsSelect: [ :m | regex search: m selector asString ]