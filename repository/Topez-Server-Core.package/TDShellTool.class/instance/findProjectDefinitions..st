as yet unclassified
findProjectDefinitions: regexPattern
  | regex |
  regex := self findRegex: regexPattern.
  regex ifNil: [ ^ #() ].
  ^ ((Metacello image
    project: [ :projectSpec | regex search: projectSpec name ];
    list)
    collect: [ :projectSpec | TDConfigurationDefinition new projectSpec: projectSpec ])
    reject: [ :def | self excludedProjectNames includes: def configurationName ]