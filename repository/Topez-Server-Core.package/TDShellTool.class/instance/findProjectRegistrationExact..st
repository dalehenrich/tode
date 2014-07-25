as yet unclassified
findProjectRegistrationExact: projectName
  | projectSpec |
  projectSpec := MetacelloProjectRegistration registry projectSpecs
    detect: [ :spec | spec name = projectName ]
    ifNone: [ self error: 'registration for projectSpec: ' , projectName , ' not found' ].
  ^ MetacelloProjectRegistration
    registrationForProjectSpec: projectSpec
    ifAbsent: [ self error: 'registration for projectSpec: ' , projectSpec name , ' not found' ]
    ifPresent: [ :registration :ignored | TDMetacelloRegistrationDefinition registration: registration ]