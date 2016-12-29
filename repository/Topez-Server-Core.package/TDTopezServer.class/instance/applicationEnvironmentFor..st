environment
applicationEnvironmentFor: anObject
  anObject ifNil: [ ^ self applicationEnvironment ].
  anObject class theNonMetaClass userId = self todeUserId
    ifTrue: [ ^ self todeEnvironment ].
  ^ self applicationEnvironment