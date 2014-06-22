instance creation
projectSpec: aProjectSpec
  | registration |
  MetacelloProjectRegistration
    registrationForProjectSpec: aProjectSpec
    ifAbsent: [ :new | ^ nil ]
    ifPresent: [ :existing :new | ^ self registration: existing ]