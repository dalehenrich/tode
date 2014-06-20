instance creation
registration: aMetacelloProjectRegistration
  | definitionClass |
  aMetacelloProjectRegistration projectSpec isBaselineOfProjectSpec
    ifTrue: [ definitionClass := TDMetacelloBaselineRegistrationDefinition ]
    ifFalse: [ 
      | projectSpec version |
      definitionClass := TDMetacelloConfigurationRegistrationDefinition.
      (self isHybridRegistration: aMetacelloProjectRegistration)
        ifTrue: [ definitionClass := TDMetacelloHybridRegistrationDefinition ] ].
  ^ definitionClass new
    registration: aMetacelloProjectRegistration;
    yourself