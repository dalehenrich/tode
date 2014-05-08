as yet unclassified
findProjectRegistrationDefinitions: regexPattern
  | regex |
  regex := self findRegex: regexPattern.
  regex ifNil: [ ^ #() ].
  ^ ((Metacello image
    project: [ :projectSpec | regex search: projectSpec name ];
    list)
    collect: [ :projectSpec | 
      MetacelloProjectRegistration
        registrationForProjectSpec: projectSpec
        ifAbsent: [ self error: 'registration for projectSpec: ' projectSpec name , ' not found' ]
        ifPresent: [ :registration :ignored | TDMetacelloRegistrationDefinition new registration: registration ] ])
    reject: [ :def | self excludedProjectNames includes: def projectName ]