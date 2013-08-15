as yet unclassified
findClass: regexPattern
  "find class <regex-pattern>"

  | regex |
  regex := self findRegex: regexPattern.
  regex ifNil: [ ^ #() ].
  ^ (Smalltalk systemNavigation allClasses asArray
    select: [ :cls | regex search: cls name asString ])
    collect: [ :cls | TDClassDefinition className: cls theNonMetaClass name ]