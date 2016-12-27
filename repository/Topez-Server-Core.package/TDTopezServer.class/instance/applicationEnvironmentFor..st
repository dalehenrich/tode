environment
applicationEnvironmentFor: anObject
  anObject ifNil: [ ^ self applicationEnvironment ].
  anObject class userId = self todeUserId
    ifTrue: [ ^ self todeEnvironment ].
  ^ self applicationEnvironment