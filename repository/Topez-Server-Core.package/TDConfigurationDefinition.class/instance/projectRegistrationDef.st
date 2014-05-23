as yet unclassified
projectRegistrationDef
  | spec |
  spec := MetacelloProjectRegistration registry projectSpecs
    detect: [ :spec | spec name = self configurationName ]
    ifNone: [ ^ nil ].
  ^ MetacelloProjectRegistration
    registrationForProjectSpec: spec
    ifAbsent: [ nil ]
    ifPresent: [ :registration :ignored | TDMetacelloRegistrationDefinition new registration: registration ]