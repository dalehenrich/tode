as yet unclassified
findClass: findTokens
  "find class <regex-pattern>"

  | regex |
  regex := self findRegex: findTokens.
  regex ifNil: [ ^ #() ].
  ^ (Smalltalk systemNavigation allClasses asArray
    select: [ :cls | regex search: cls name asString ])
    collect: [ :cls | TDClassDefinition className: cls theNonMetaClass name ]