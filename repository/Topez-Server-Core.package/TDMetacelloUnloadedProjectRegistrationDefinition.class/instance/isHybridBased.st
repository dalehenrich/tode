testing
isHybridBased
  isHybrid
    ifNil: [ 
      self isBaselineBased
        ifTrue: [ ^ false ].
      isHybrid := TDMetacelloRegistrationDefinition isHybridRegistration: self ].
  ^ isHybrid