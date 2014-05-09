as yet unclassified
findProjectRegistrationExact: projectName
  | projectSpec |
  projectSpec := Metacello image
    project: projectName;
    list.
  ^ MetacelloProjectRegistration
    registrationForProjectSpec: projectSpec
    ifAbsent: [ self error: 'registration for projectSpec: ' projectSpec name , ' not found' ]
    ifPresent: [ :registration :ignored | TDMetacelloRegistrationDefinition new registration: registration ]