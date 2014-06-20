as yet unclassified
findProjectRegistrationDefinitions: regexPattern
  | regex |
  regex := self findRegex: regexPattern.
  regex ifNil: [ ^ #() ].
  ^ (MetacelloProjectRegistration registry projectSpecs
    collect: [ :projectSpec | 
      MetacelloProjectRegistration
        registrationForProjectSpec: projectSpec
        ifAbsent: [ self error: 'registration for projectSpec: ' projectSpec name , ' not found' ]
        ifPresent: [ :registration :ignored | TDMetacelloRegistrationDefinition registration: registration ] ])
    reject: [ :def | self excludedProjectNames includes: def projectName ]