as yet unclassified
findSource: findTokens
  "find source <regex-pattern>"

  | regex |
  regex := self findRegex: findTokens.
  regex ifNil: [ ^ #() ].
  ^ Smalltalk systemNavigation
    allMethodsNoDoitsSelect: [ :m | regex search: m sourceString ]